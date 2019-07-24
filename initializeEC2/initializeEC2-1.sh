echo "Setting time to EST."
sudo cp /usr/share/zoneinfo/America/New_York /etc/localtime

echo "Implementing shutdown failsafes via Crontab."
sudo crontab -l -u root | echo "* 18 * * 5 /sbin/shutdown -h now" | sudo crontab -u root -
echo "But now there is!"

echo "Installing wget, zip, unzip, file, bzip2, nano."
sudo yum install wget zip unzip file bzip2 nano

echo "Downloading Anaconda."
wget https://repo.anaconda.com/archive/Anaconda3-2019.03-Linux-x86_64.sh

echo "Installing Anaconda."
yes | bash Anaconda3-2019.03-Linux-x86_64.sh
rm Anaconda3-2019.03-Linux-x86_64.sh

echo "Success! Anaconda installed."
echo "Close and reopen this terminal window for changes to take effect. Then execute the second installer."
