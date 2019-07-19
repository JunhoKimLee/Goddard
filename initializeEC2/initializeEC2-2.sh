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
echo "Downloading idleShutdown.sh - A script to be run on schedule that checks if a script is running and if not, shuts down the machine."
mv Goddard-master Useful_Scripts
rm master.zip

echo "Installing nfs-utils."
sudo yum install -y nfs-utils

echo "Success! This EC2 instance has been initialized."
