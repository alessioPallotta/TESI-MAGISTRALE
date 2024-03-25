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

Scaricare i driver nvidia
```
https://gist.github.com/denguir/b21aa66ae7fb1089655dd9de8351a202
```
