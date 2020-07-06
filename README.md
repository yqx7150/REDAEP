# REDAEP
**Paper**: REDAEP: Robust and Enhanced Denoising Autoencoding Prior for Sparse-View CT Reconstruction  
**Authors**: Fengqin Zhang, Minghui Zhang, Binjie Qin, Yi Zhang, Zichen Xu, Qiegen Liu, and Dong Liang   
             Accepted in IEEE Transactions on Radiation and Plasma Medical Sciences

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


## Other Related Projects
  * Highly Undersampled Magnetic Resonance Imaging Reconstruction using Autoencoding Priors  
[<font size=5>**[Paper]**</font>](https://cardiacmr.hms.harvard.edu/files/cardiacmr/files/liu2019.pdf)  [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDAEPRec)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * Multi-Channel and Multi-Model-Based Autoencoding Prior for Grayscale Image Restoration  
[<font size=5>**[Paper]**</font>](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8782831)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/MEDAEP)   [<font size=5>**[Slide]**</font>](https://github.com/yqx7150/EDAEPRec/tree/master/Slide)

  * High-dimensional Embedding Network Derived Prior for Compressive Sensing MRI Reconstruction  
 [<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/abs/pii/S1361841520300815?via%3Dihub)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/EDMSPRec)
 
  * Homotopic Gradients of Generative Density Priors for MR Image Reconstruction  
 [<font size=5>**[Code]**</font>](https://github.com/yqx7150/HGGDP)
 
  * Denoising Auto-encoding Priors in Undecimated Wavelet Domain for MR Image Reconstruction  
 [<font size=5>**[Paper]**</font>](https://arxiv.org/ftp/arxiv/papers/1909/1909.01108.pdf)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/WDAEPRec)

  * Learning Priors in High-frequency Domain for Inverse Imaging Reconstruction  
[<font size=5>**[Paper]**</font>](https://arxiv.org/ftp/arxiv/papers/1910/1910.11148.pdf)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/HFDAEP)

  * Learning Multi-Denoising Autoencoding Priors for Image Super-Resolution  
[<font size=5>**[Paper]**</font>](https://www.sciencedirect.com/science/article/pii/S1047320318302700)   [<font size=5>**[Code]**</font>](https://github.com/yqx7150/MDAEP-SR)

