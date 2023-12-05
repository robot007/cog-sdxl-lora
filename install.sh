#!/bin/bash

# Update package lists
sudo apt update

# Install general dependencies
sudo apt install -y libgl1-mesa-glx ffmpeg libsm6 libxext6

# Install Python 3.9
sudo apt install -y python3.9 python3.9-venv python3.9-dev

# Add the repository for CUDA 11.8 (if not already added)
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/3bf863cc.pub
sudo add-apt-repository "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/ /"
sudo apt update

# Install CUDA 11.8
sudo apt install -y cuda-11-8

# Post-installation steps for CUDA (optional, uncomment if needed)
# echo 'export PATH=/usr/local/cuda-11.8/bin${PATH:+:${PATH}}' >> ~/.bashrc
# echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
# source ~/.bashrc

# Verify CUDA installation (optional, uncomment to use)
# nvcc --version
