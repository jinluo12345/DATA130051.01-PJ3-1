export TORCH_HOME=/inspire/hdd/project/embodied-multimodality/public/lzjjin/fudan-course/DATA130051.01/PJ3/lpips-weights/
python train.py --config configs/wineholder.txt --ckpt /inspire/hdd/project/embodied-multimodality/public/lzjjin/fudan-course/DATA130051.01/PJ3/TensoRF/log/tensorf_Wineholder_VM/tensorf_Wineholder_VM.th --render_only 1 --render_test 1 
