# REDAEP
**Paper**: REDAEP: Robust and Enhanced Denoising Autoencoding Prior for Sparse-View CT Reconstruction  
**Authors**: Fengqin Zhang, Minghui Zhang, Binjie Qin, Yi Zhang, Zichen Xu, Qiegen Liu, and Dong Liang

## Motivation
In X-ray computed tomography, radiation doses are harmful but can be significantly reduced by intuitively decreasing the number of projections. However, less projection views usually lead to low resolution images. To address this issue, we propose a robust and enhanced mechanism on the basis of denoising autoencoding prior, or REDAEP for sparse-view CT reconstruction. REDAEP can substantially improve the reconstruction quality with two novel contri-butions. First, by employing the variable augmentation technique, REDAEP learns higher-dimensional network with three-channel image and proceeds to the single-channel image reconstruction. Second, REDAEP replaces the L2 regression loss function with a more robust Lp (0<p<2) regression, in order to preserve more texture details. Empirical results demonstrate that REDAEP can achieve better performance, i.e., quantitative measures and subjective visual quality, as compared to state-of-the-arts.

The overall REDAEP algorithm is as follows:
<div align=center>![repeat-REDAEP](https://github.com/yqx7150/REDAEP/blob/master/figs/Algorithm.png)


The flowchart illustration of REDEAP for single-channel CT reconstruction
![repeat-REDAEP](https://github.com/yqx7150/REDAEP/blob/master/figs/Iteration.png)
