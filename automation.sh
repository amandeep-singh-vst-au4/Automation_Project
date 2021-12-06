sudo apt update -y

if [ $(/etc/init.d/sudo systemctl status apache2 | grep -v grep | grep 'Apache2 is installed' | wc -l) > 0 ]
then
         echo "apche2 is installed"
 else
           sudo apt -get install apache2
   fi


 
