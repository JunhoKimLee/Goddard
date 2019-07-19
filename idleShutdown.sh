#read -p 'Script name: ' varname;
varname="LAImaster.sh" #change varname to target script name
echo $varname
result=`ps aux | grep -i $varname | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
       	echo "script is running"
   else
       	echo "script is not running. Will commence shutdown."
	sudo shutdown -h now
fi


