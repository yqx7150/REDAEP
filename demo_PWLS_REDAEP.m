% These MATLAB programs implement the Sparse-view CT reconstruction method as described in paper:
%
% Title: REDAEP: Robust and Enhanced Denoising Autoencoding Prior for Sparse-View CT Reconstruction
% Author: Fengqin Zhang, Minghui Zhang, Binjie Qin, Yi Zhang, Zichen Xu, Qiegen Liu, and Dong Liang 
%
% -------------------------------------------------------------------------------------------------------
% The software implemented by MatLab 2018a are included in this package.
% -------------------------------------------------------------------------------------------------------
% Author: Qiegen Liu
% Email:  liuqiegen@ncu.edu.cn
% Last modified by Qiegen Liu, June 2019

clear
cur = cd;
addpath(genpath(cur));
getd = @(p)path(path,p);% Add some directories to the path
getd('./model/');

tic

% load the test image
ImgNo = 2;
switch ImgNo
    case 1
        imageName = 'abdominal';
    case 2
        imageName = 'thoracic';
end
load(strcat('Test_Images/', imageName, '.mat'));
[rows, cols] = size(original_image);

% load the system matrix
img_size = rows;
pro_views = 64;
bins = 512;
sysmat = strcat('SysMat_ImgSize_', num2str(img_size), ...
    '_Views_', num2str(pro_views), ...
    '_Bins_', num2str(bins));
load(strcat('Data/', sysmat, '.mat'));

% get measurement;
proj = SystemMatrix * original_image(:);

% params of pwls
beta = 0.005;
pwls_iter = 20;
iter = 1000;
pwls = zeros(size(original_image));
reconstruction = zeros(size(original_image));
pre_pwls = zeros(size(original_image));
use_gpu = 1;   % set to 0 if you want to run on CPU (very slow)

net = loadNet_qx3channel_diffSigma_REDNet1copy3YYY([rows,cols,3], use_gpu);
sigma_net = 15;

gradient_beta = 1;
maxvalue_exchange = 255/max(original_image(:));

wei_q = 1.5;
Wei_prior_err1 = ones([size(original_image),3]);

for i = 1 : iter
    % pwls reconstruction
    if i < 40
        pwls = split_hscg(reconstruction, proj, reconstruction, SystemMatrix, beta, pwls_iter);
    else
        pwls = split_hscg(pwls, proj, reconstruction, SystemMatrix, beta, pwls_iter);
    end
    if i<= 500
        Thresh_value = 1000;
    else
        Thresh_value = 1; %1;
    end
    pwls(pwls < 0) = 0;
    fprintf('iter:%d, pwls = %f,', i, psnr(original_image,pwls));
    fprintf('pwls_ssim = %f\n',ssim(original_image,pwls));
    %% descent gradient of REDAEP
    input = repmat(pwls * maxvalue_exchange,[1,1,3]);
    noise = randn(size(input)) * sigma_net;
    rec = net.forward({input+noise});
    prior_err = input - rec{1};
    if i >= 40
        Wei_prior_err1 = Thresh_value./(Thresh_value+abs(prior_err).^(2-wei_q));
    end
    rec = net.backward({-prior_err});
    prior_err = prior_err + rec{1};
    prior_err = prior_err / maxvalue_exchange;
    
    reconstruction = double(pwls - gradient_beta * mean(Wei_prior_err1.*prior_err,3));
    reconstruction(reconstruction < 0) = 0;
    fprintf('recon_psnr = %f,',psnr(original_image,reconstruction));
    fprintf('recon_ssim = %f\n',ssim(original_image,reconstruction));
    % stop criteria
    diff = (pre_pwls-pwls).^2;
    if sqrt(sum(diff(:))) < 5e-4
        break;
    end
    
    pre_pwls = pwls;
end

toc
fclose('all');

% show the results
switch ImgNo
    case 1
        disp_win = [850/3000 1250/3000];
    case 2
        disp_win = [0/3000 1250/3000];
end

figure;
subplot(1, 3, 1);
imshow(original_image, disp_win, 'border', 'tight');
subplot(1, 3, 2);
imshow(pwls,disp_win, 'border', 'tight');
subplot(1, 3, 3);
imshow(reconstruction,disp_win, 'border', 'tight');



