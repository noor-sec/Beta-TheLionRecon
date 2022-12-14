#! /bin/bash 
speedtest
sudo apt install lolcat -y
echo "Installing Requirements........" | lolcat
sudo apt update -y
sudo apt upgrade -y
sudo apt install python -y
sudo apt install python2 -y
sudo apt install python3 -y
sudo apt install python-pip -y
sudo apt install python3-pip -y
sudo apt install git -y
sudo apt install php -y
sudo apt install lolcat -y
sudo apt install figlet -y
sudo apt-get install libcurl4-openssl-dev -y 
sudo apt-get install libssl-dev -y
sudo apt-get install jq -y
sudo apt-get install ruby-full -y
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev -y 
sudo apt-get install build-essential libssl-dev libffi-dev python-dev -y
sudo apt-get install python-setuptools -y
sudo apt-get install libldns-dev -y
sudo apt-get install python-dnspython -y 
sudo apt-get install rename -y
sudo apt-get install xargs -y
sudo apt install -y awscli -y
sudo apt-get install nmap -y
#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing Go-Lang-------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Go-Lang....." | lolcat
wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
cp go1.18.4.linux-amd64.tar.gz /root/
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing Nuclei--------------------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Nuclei....." | lolcat
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest | lolcat
cp /root/go/bin/nuclei /usr/local/bin/
nuclei
#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing SubDomains Finders--------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Assestfinder..." | lolcat
go install github.com/tomnomnom/assetfinder@latest
cp /root/go/bin/assetfinder /usr/local/bin
echo "[+] Installing SubFinder......." | lolcat
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
cp /root/go/bin/subfinder /usr/local/bin/
echo "[+] Installing Findomain........" | lolcat
wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
mv findomain-linux findomain
chmod 777 findomain
cp findomain /usr/local/bin
echo "[+] Installing Amass......." | lolcat
go install -v github.com/OWASP/Amass/v3/...@master
cp /root/go/bin/amass /usr/local/bin/
echo "[+] Installing SubList3r........." | lolcat
git clone https://github.com/aboul3la/Sublist3r.git 
mv Sublist3r /opt/
pip3 install -r /opt/Sublist3r/requirements.txt
#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing ScreenShoters---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing EyeWitness....." | lolcat
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cp -r EyeWitness /opt/
sudo /opt/EyeWitness/Python/setup/setup.sh

echo "[+] Installing GoWitness....." | lolcat
go install github.com/sensepost/gowitness@latest
cp /root/go/bin/gowitness /usr/local/bin/

#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing Url Crawlers ---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Waybackurls....." | lolcat
go install github.com/tomnomnom/waybackurls@latest
cp /root/go/bin/waybackurls /usr/local/bin/
echo "[+] Installing gau - Get All Urls" | lolcat
go install github.com/lc/gau/v2/cmd/gau@latest
cp /root/go/bin/gau /usr/local/bin/
echo "[+] Installing gauplus........" | lolcat
go install github.com/bp0lr/gauplus@latest
cp /root/go/bin/gauplus /usr/local/bin/
echo "[+] Installing Paramspider......" | lolcat
git clone https://github.com/devanshbatham/Paramspider.git
mv Paramspider /opt/
pip3 install -r /opt/Paramspider/requirements.txt
#---------------------------------------------------------------------------------------------------------------------
#--------------------------------------Installing Subs Live Checker---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+]Installing httpx........" | lolcat
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
cp /root/go/bin/httpx /usr/local/bin/
echo "[+]Installing httprobe......" | lolcat
go install github.com/tomnomnom/httprobe@latest 
cp /root/go/bin/httprobe /usr/local/bin/

#---------------------------------------------------------------------------------------------------------------------
#-----------------------------------------Installing SubTakeOver Checkers---------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "Installing Subzy........" | lolcat
go install -v github.com/lukasikic/subzy@latest
cp /root/go/bin/subzy /usr/local/bin/

#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------------Installing Sql Map---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "Installing Sqlmap......" |lolcat
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap
mv sqlmap /opt/
#---------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------Installing CRLF Fuzzer------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
GO111MODULE=on go install github.com/dwisiswant0/crlfuzz/cmd/crlfuzz@latest
cp /root/go/bin/crlfuzz /usr/local/bin/

#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing Usefull Tools---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "Installing qsreplace....." | lolcat
go install github.com/tomnomnom/qsreplace@latest
cp /root/go/bin/qsreplace /usr/local/bin/
echo "[+] Installing ffuf" | lolcat
go install github.com/ffuf/ffuf@latest
cp /root/go/bin/ffuf /usr/local/bin/
echo "[+] Installing gf Patterns" | lolcat
go install github.com/tomnomnom/gf@latest
cp /root/go/bin/gf /usr/local/bin/
echo "[+] Installing Dalfox..." | lolcat
go install github.com/hahwul/dalfox/v2@latest
cp /root/go/bin/dalfox /usr/local/bin/
echo "[+] Installing Gxss....." | lolcat
go install github.com/KathanP19/Gxss@latest
cp /root/go/bin/dalfox /usr/local/bin/
echo "[+] Installing kxss....." | lolcat
go install github.com/Emoe/kxss@latest
cp /root/go/bin/dalfox /usr/local/bin/
#----------------------------------------------
echo "[+] Installing cariddi...." | lolcat
git clone https://github.com/edoardottt/cariddi.git
mv cariddi /opt/
go /opt/cariddi/get
make /opt/cariddi/linux
echo "[+] Installing cariddi...." | lolcat
echo "[+] Installing cariddi...." | lolcat
#---------------------------------------------------------------------------------------
#-------------------------------Game Starts Now-----------------------------------------
#---------------------------------------------------------------------------------------

#---------------------------------------------------------------------------------------------------------------------
#------------------------------------------Installing Url Crawlers ---------------------------------------------------
#---------------------------------------------------------------------------------------------------------------------
echo "[+] Installing Waybackurls....." | lolcat
go install github.com/tomnomnom/waybackurls@latest
cp /root/go/bin/waybackurls /usr/local/bin/
echo "[+] Installing gau - Get All Urls" | lolcat
go install github.com/lc/gau/v2/cmd/gau@latest
cp /root/go/bin/gau /usr/local/bin/
echo "[+] Installing gauplus...." | lolcat
go install github.com/bp0lr/gauplus@latest
cp /root/go/bin/gauplus /usr/local/bin/
echo "[+] Installing Paramspider...." | lolcat
git clone https://github.com/devanshbatham/Paramspider.git
mv Paramspider /opt/
pip3 install -r /opt/Paramspider/requirements.txt
echo "[+] Installing cariddi...." | lolcat
git clone https://github.com/edoardottt/cariddi.git
mv cariddi /opt/
go /opt/cariddi/get
make /opt/cariddi/linux
echo "[+] Installing Go Spider...." | lolcat
GO111MODULE=on go install github.com/jaeles-project/gospider@latest
cp /root/go/bin/gospider /usr/local/bin
echo "[+] Installing Hakrawler...." | lolcat
go install github.com/hakluke/hakrawler@latest
cp /root/go/bin/hakrawler /usr/local/bin
echo "[+] Installing Arjun...." | lolcat
git clone https://github.com/s0md3v/Arjun.git
mv Arjun /opt/
python3 /opt/Arjun/setup.py install














