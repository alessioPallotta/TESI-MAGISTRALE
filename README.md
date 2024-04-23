# TESI-MAGISTRALE

Passi iniziali
```sh
git clone https://github.com/alessioPallotta/TESI-MAGISTRALE.git
cd TESI-MAGISTRALE
```

Setup di conda per il server (installare in /opt/miniconda3)
```sh
sudo chmod +x setup-server.sh
./setup-server.sh
```

Per disinstallare eventualmente conda
```sh
sudo rm -R /opt/miniconda3
```

Aggiornamento bashrc
```sh
source ~/.bashrc
```

Setup ambiente conda e installazione delle dipendenze
```
conda env create -f ./environment/environment.yml
conda activate logBert
```


------------------------------------------------------------------
# How to install CUDA & cuDNN on Ubuntu 22.04
Install NVIDIA drivers
Update & upgrade
```
sudo apt update && sudo apt upgrade
```
Remove previous NVIDIA installation
```
sudo apt autoremove nvidia* --purge
```
Check Ubuntu devices
```
ubuntu-drivers devices
```
You will install the NVIDIA driver whose version is tagged with recommended

Install Ubuntu drivers
```
sudo ubuntu-drivers autoinstall
```
Install NVIDIA drivers
My recommended version is 525, adapt to yours
```
sudo apt install nvidia-driver-525
```
Reboot & Check
```
sudo reboot
```
after restart verify that the following command works
```
nvidia-smi
```
Install CUDA drivers
Update & upgrade
```
sudo apt update && sudo apt upgrade
```
Install CUDA toolkit
```
sudo apt install nvidia-cuda-toolkit
```
Check CUDA install
```
nvcc --version
```
Install cuDNN
Download cuDNN .deb file
You can download cuDNN file here. You will need an Nvidia account. Select the cuDNN version for the appropriate CUDA version, which is the version that appears when you run:
```
nvcc --version
```
Install cuDNN
```
sudo apt install ./<filename.deb>
sudo cp /var/cudnn-<something>.gpg /usr/share/keyrings/
```
My cuDNN version is 8, adapt the following to your version:
```
sudo apt update
sudo apt install libcudnn8
sudo apt install libcudnn8-dev
sudo apt install libcudnn8-samples
```
Test CUDA on Pytorch
Create a virtualenv and activate it
```
sudo apt-get install python3-pip
sudo pip3 install virtualenv 
virtualenv -p py3.10 venv
source venv/bin/activate
```
Install pytorch
```
pip3 install torch torchvision torchaudio
```
Open Python and execute a test
```
import torch
print(torch.cuda.is_available()) # should be True

t = torch.rand(10, 10).cuda()
print(t.device) # should be CUDA
```

