# REDAEP
**Paper**: REDAEP: Robust and Enhanced Denoising Autoencoding Prior for Sparse-View CT Reconstruction  
**Authors**: Fengqin Zhang, Minghui Zhang, Binjie Qin, Yi Zhang, Zichen Xu, Qiegen Liu, and Dong Liang   
             IEEE Transactions on Radiation and Plasma Medical Sciences, https://ieeexplore.ieee.org/document/9076295   

## Motivation
In X-ray computed tomography, radiation doses are harmful but can be significantly reduced by intuitively decreasing the number of projections. However, less projection views usually lead to low resolution images. To address this issue, we propose a robust and enhanced mechanism on the basis of denoising autoencoding prior, or REDAEP for sparse-view CT reconstruction. REDAEP can substantially improve the reconstruction quality with two novel contri-butions. First, by employing the variable augmentation technique, REDAEP learns higher-dimensional network with three-channel image and proceeds to the single-channel image reconstruction. Second, REDAEP replaces the L2 regression loss function with a more robust Lp (0<p<2) regression, in order to preserve more texture details. Empirical results demonstrate that REDAEP can achieve better performance, i.e., quantitative measures and subjective visual quality, as compared to state-of-the-arts.

 </div>
  
<img src="https://github.com/yqx7150/REDAEP/blob/master/figs/Visual_comparison.png">  

## Algorithm
The overall REDAEP algorithm is as follows:  
<div align="center">
  
<img src="https://github.com/yqx7150/REDAEP/blob/master/figs/Algorithm.png" width = "400" height = "450">  
  
 </div>

The flowchart illustration of REDEAP for single-channel CT reconstruction
![repeat-REDAEP](https://github.com/yqx7150/REDAEP/blob/master/figs/Iteration.png)

## Requirements and Dependencies   
SysMat_ImgSize_256_Views_64_Bins_512.mat
(https://pan.baidu.com/s/1Mjybi8Me6lRwAE0s9Gu1qw  Password：auj6)

## Other Related Projects
<div align="center"><img src="https://github.com/yqx7150/OSDM/blob/main/All-CT.png" >  </div>   
    
  * Iterative Reconstruction for Low-Dose CT using Deep Gradient Priors of Generative Model  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/abstract/document/9703672)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EASEL)   [<font size=5>**[PPT]**</font>](https://github.com/yqx7150/HGGDP/tree/master/Slide)
   
* Generative Modeling in Sinogram Domain for Sparse-view CT Reconstruction      
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/document/10233041)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/GMSD)

* One Sample Diffusion Model in Projection Domain for Low-Dose CT Imaging  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/abstract/document/10506793)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/OSDM)
      
* 基于深度能量模型的低剂量CT重建  
[<font size=5>**[Paper]**</font>](http://cttacn.org.cn/cn/article/doi/10.15953/j.ctta.2021.077)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EBM-LDCT)

* Wavelet-improved score-based generative model for medical imaging  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/abstract/document/10288274)       
  
* Deep Frequency-Recurrent Priors for Inverse Imaging Reconstruction  
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S0165168421003571)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/HFDAEP)
 
* Diffusion Models for Medical Imaging
[<font size=5>**[Paper]**</font>](https://github.com/yqx7150/Diffusion-Models-for-Medical-Imaging)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/Diffusion-Models-for-Medical-Imaging)   [<font size=5>**[PPT]**</font>](https://github.com/yqx7150/HKGM/tree/main/PPT) 
