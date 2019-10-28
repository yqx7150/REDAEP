function x = split_hscg(x,y,u,H,alpha,niter)

% Conjugate HS gradient method for solving min _f ||Hf-g||_2^2+alpha_1||f-u^(i-1)||_2^2
% x the restoreed sinogram, y measure data (raw data)
% x = f, y=g
[rows, cols] = size(x);
x = x(:);
y = y(:);
u = u(:);
for iter = 1:niter
    grad = double(H' * (H * x - y) + alpha * (x - u)); % gradient
    if iter ==1
        d = -grad;
    else
        d = -grad + (grad'*(grad-gradold))/(d'*(grad-gradold))*d;
    end
    gradold = grad;
    Hd = double(H*d);
    step = -(grad'*d)/(Hd'*Hd + d'*d*alpha); % optimal stepsize
    x = x + step * d;
end
x = reshape(x,rows, cols);
figure(222),imshow(x,[])
