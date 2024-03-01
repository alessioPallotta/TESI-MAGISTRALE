# TESI-MAGISTRALE

Passi iniziali
```sh
git clone https://github.com/alessioPallotta/TESI-MAGISTRALE.git
cd TESI-MAGISTRALE
```

Setup di conda per il server
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
conda create -f ./environment/environment.yml
conda activate logBert
```

