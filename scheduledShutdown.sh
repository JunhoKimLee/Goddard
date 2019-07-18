# Schedules a shutdown of this EC2 instance when run

read -p 'Shutdown timer (in minutes):  ' varname;
sudo shutdown -P $varname &
echo "Shutdown set."
