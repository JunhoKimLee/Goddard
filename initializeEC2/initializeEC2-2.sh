echo "Updating Anaconda to latest version."
conda update -n root conda
conda update --all
conda --version

echo "Installing GDAL."
conda install gdal

echo "Downloading some of Junho's useful scripts..."
wget https://github.com/JunhoKimLee/Goddard/archive/master.zip
unzip master.zip
echo "Downloading isRunning.sh - A script that will tell you if a script is running in the background."
echo "Downloading isShutdown.sh - A script that will tell you if a shutdown has been scheduled."
echo "Downloading scheduledShutdown.sh - A script that will let you schedule a future shutdown."
mv -r Goddard-master Useful_Scripts

echo "Organizing some stuff..."
mkdir Useful_Scripts
mv isRunning.sh Useful_Scripts/isRunning.sh
mv isShutdown.sh Useful_Scripts/isShutdown.sh
mv scheduledShutdown.sh Useful_Scripts/scheduledShutdown.sh

echo "Installing nfs-utils."
sudo yum install -y nfs-utils

echo "Success! This EC2 instance has been initialized."
