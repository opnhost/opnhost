mkdir /OpnHost
cd /OpnHost
wget https://raw.githubusercontent.com/opnhost/opnhost/main/OpnHost_linux_arm64.zip
unzip OpnHost_linux_arm64.zip
rm OpnHost_linux_arm64.zip
chmod +x opnhosts
mkdir /OpnHost-Core
mkdir /OpnHost-Core/config
cd /OpnHost-Core/config
wget https://raw.githubusercontent.com/opnhost/opnhost/main/init.ini
/OpnHost/opnhosts
