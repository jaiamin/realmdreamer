pip install torch==2.0.1 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

cd nerfstudio
pip install -e .
cd ../
pip install -e pcd_generator/depth_estimators/extern/depth_anything

pip install -r requirements.txt

cd realmdreamer
pip install -e .
cd ../
pip install ./realmdreamer/realmdreamer/gaussian_splatting/simple-knn
pip install ./realmdreamer/realmdreamer/gaussian_splatting/occlude
pip install ./realmdreamer/diff-gaussian-rasterization
pip uninstall -y tinycudann
pip install 'git+https://github.com/facebookresearch/pytorch3d.git@v0.7.4'

wget --content-disposition -P ./pcd_generator/depth_estimators/checkpoints "https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints/depth_anything_vitl14.pth"
wget --content-disposition -P ./pcd_generator/depth_estimators/checkpoints "https://huggingface.co/spaces/LiheYoung/Depth-Anything/resolve/main/checkpoints_metric_depth/depth_anything_metric_depth_indoor.pt"
