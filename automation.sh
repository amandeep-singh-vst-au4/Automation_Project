sudo apt update -y


if [ $(/etc/init.d/sudo systemctl status apache2 | grep -v grep | grep 'Apache2 is installed' | wc -l) > 0 ]
then
         echo "apche2 is installed"
 else
           sudo apt -get install apache2
   fi
   


servstat=$(service apache2 status)

if [[ $servstat == *"active (running)"* ]]; then
          echo "process is running"
  else
          sudo /etc/init.d/apache2 restart
          echo "service started again"
  fi



 
