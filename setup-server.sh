#!/bin/bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

chmod +x Miniconda3-latest-Linux-x86_64.sh

sudo ./Miniconda3-latest-Linux-x86_64.sh

sudo groupadd conda

sudo chgrp -R conda /opt/miniconda3

sudo chmod 775 -R /opt/miniconda3

sudo adduser Lucass97 conda
sudo adduser ALEP conda
sudo adduser ALEM conda

sudo chown -R Lucass97 /users/Lucass97/.conda
sudo chown -R ALEP /users/ALEP/.conda
sudo chown -R ALEM /users/ALEM/.conda

sudo chmod 777 /mydata

# Inizializza Conda per l'utente corrente
/opt/miniconda3/bin/conda init