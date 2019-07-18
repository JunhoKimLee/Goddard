if [ -f /run/systemd/shutdown/scheduled ]; then

cat /run/systemd/shutdown/scheduled
echo "Shutdown is scheduled."

else
echo "No shutdown scheduled."
fi
