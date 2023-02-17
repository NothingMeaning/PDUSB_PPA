

# Description
PPA repository for various packages

# Usage
```
curl -s --compressed "https://nothingmeaning.github.io/PDUSB_PPA/pdusb_ppa.gpg" -o /usr/share/keyrings/pdusb-linux-ppa.gpg

sudo apt-get install lsb-release
echo "deb [signed-by=/usr/share/keyrings/pdusb-linux-ppa.gpg] https://nothingmeaning.github.io/PDUSB_PPA/apt/ $(lsb_release -cs) main" > /etc/apt/sources.list.d/pdusb_ppa.list
sudo apt update
```


# Packages
TODO
