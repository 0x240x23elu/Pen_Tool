#!/bin/bash
cd ~/
RED='\033[0;31m'
echo -e "${RED} Installation Of Pentesting Tools 0x240x23elu"

echo -e  "${RED} Please install with Root user"
sudo apt-get  update -y
sudo apt-get install git -y
sudo apt install python2 -y
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
sudo apt-get install jq -y
sudo apt install -y python3-pip -y
sudo rm -rf /usr/local/go/

curl -OL https://go.dev/dl/go1.17.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.17.7.linux-amd64.tar.gz

echo "I am using Default Bashrc for profile Please Y if you agree otherwise its using bash_profile? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "do that"
        echo "export PATH=/usr/local/go/bin" >> ~/.bashrc
        echo "export GOPATH=$HOME/go" >> ~/.bashrc
        echo "export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in" >> ~/.bashrc
        source ~/.bashrc

else
        echo "don't do that"
        echo "export PATH=/usr/local/go/bin" >> ~/.bash_profile
        echo "export GOPATH=$HOME/go" >> ~/.bash_profile
        echo "export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/b‌​in" >> ~/.bash_profile
        source ~/.bashrc

fi
 



git clone https://github.com/projectdiscovery/nuclei-templates

go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
sudo apt install -y libpcap-dev -y
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
go install -v  github.com/OWASP/Amass/cmd/amass@latest
go install -v  github.com/OWASP/Amass/v3/...
go install -v  github.com/gwen001/github-subdomains@latest
go install -v  github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
go install -v  github.com/tomnomnom/anew@latest
go install -v  github.com/tomnomnom/assetfinder@latest
go install -v github.com/sw33tLie/bcscope@latest
go install -v  github.com/projectdiscovery/httpx/cmd/httpx@latest
go install -v github.com/tomnomnom/waybackurls@latest
go install -v github.com/tomnomnom/gf@latest
mkdir /.gf
git clone https://github.com/1ndianl33t/Gf-Patterns
sudo mv ~/Gf-Patterns/*.json ~/.gf
go install -v github.com/hahwul/dalfox/v2@latest
go install -v github.com/lc/gau/v2/cmd/gau@latest
go install -v github.com/ffuf/ffuf@latest
go get -u github.com/tomnomnom/qsreplace
go install -v  github.com/tomnomnom/qsreplace@latest

echo -e " ${RED} installation Done"
echo -e "${RED} If any query then let me know "
