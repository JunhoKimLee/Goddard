read -p 'Script name: ' varname;

result=`ps aux | grep -i $varname | grep -v "grep" | wc -l`
if [ $result -ge 1 ]
   then
        echo "script is running"
   else
        echo "script is not running"
fi
