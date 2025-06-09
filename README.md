# TensoRF
## [Project page](https://apchenstu.github.io/TensoRF/) |  [Paper](https://arxiv.org/abs/2203.09517)
This repository contains a pytorch implementation for the paper: [TensoRF: Tensorial Radiance Fields](https://arxiv.org/abs/2203.09517). Our work present a novel approach to model and reconstruct radiance fields, which achieves super
**fast** training process, **compact** memory footprint and **state-of-the-art** rendering quality.<br><br>

## Installation

#### Tested on Ubuntu 20.04 + Pytorch 1.10.1 

Install environment:
```
conda create -n TensoRF python=3.8
conda activate TensoRF
pip install torch torchvision
pip install tqdm scikit-image opencv-python configargparse lpips imageio-ffmpeg kornia lpips tensorboard
```


## Quick Start
The training script is in `train.py`, to train a TensoRF:

```
python train.py --config configs/wineholder.txt
```

### For pretrained checkpoints and results please see:
[https://drive.google.com/drive/folders/1l2R2QEO5ly1I5D3o_LdLwNYIGFbbOxNo](https://drive.google.com/drive/folders/1l2R2QEO5ly1I5D3o_LdLwNYIGFbbOxNo)


## Rendering

```
python train.py --config configs/wineholder.txt --ckpt path/to/your/checkpoint --render_only 1 --render_test 1 
```

You can just simply pass `--render_only 1` and `--ckpt path/to/your/checkpoint` to render images from a pre-trained
checkpoint. You may also need to specify what you want to render, like `--render_test 1`, `--render_train 1` or `--render_path 1`.
The rendering results are located in your checkpoint folder. 

