#!/usr/bin/env bash

NEWT_COLORS='
  window=,red
  border=white,red
  textbox=blue,red
  button=black,white
' \

echo "Welcome to Bash $BASH_VERSION" > FabLab

whiptail --textbox FabLab 12 80

whiptail --title "Scrollbox" --scrolltext --msgbox "$(ls)" 10 60 0


# (
# msgs=( "Preparing install..." "Starting MC installation..." "Vim installation completed successfully" "Starting  Viminstallation..." "Starting PHP installation..." "PHP installation completed successfully" )
# items=$(
#        {
#            #echo "Preparing install..."
#            sudo apt-get update -y
#            #echo "Starting Nginx installation..."
#            sudo apt-get install mc -y
            #echo "MC installation completed successfully"
#	    sudo apt-get install vim -y
            #echo "VIM installation completed successfully"
#        } | wc -l)
# processed=0
# while [ $processed -le $items ]; do
#    pct=$(( $processed * 100 / $items ))
#    echo "***"
#    echo $processed
#    echo ${msgs["$processed"]}
#    echo ***
#    echo "$pct"
#    processed=$((processed+1))
#    sleep 1
# done 
# ) | whiptail --title "Gauge" --gauge "Please wait..." 10 60 0 






msgs=( "Preparing install..." "Starting Cura installation..." "Cura installation completed successfully" "Starting FreeCad installation..." "FreeCad installation completed successfully" "Starting inkscape installation..." "inkscape installation completed successfully" "Starting imagemagick installation..." "imagemagick installation completed successfully" )
commands=(
        
            #echo "Preparing install..."
            "sudo apt-get update -y"
            
            #echo "Starting Cura installation..."
            "sudo apt-get install cura -y"
            
            #echo "Cura installation completed successfully"
            "sudo echo 'ok cura' > okcura.log" 
            
            #echo "Starting FreeCad installation..."
            "sudo apt-get install freecad -y"
            
            #echo "FreeCad installation completed successfully"
            "sudo echo 'ok freecad' > okfreecad.log" 

            #echo "Starting inkscape installation..."
            "sudo apt-get install inkscape -y"
            
            #echo "inkscape installation completed successfully"
            "sudo echo 'ok inkscape' > okinkscape.log"
            
            #echo "Starting imagemagick installation..."
            "sudo apt-get install imagemagick -y"
            
            #echo "imagemagick installation completed successfully"
            "sudo echo 'ok imagemagick' > okimagemagick.log"
            
         )
n=${#commands[@]}
i=0
while [ "$i" -lt "$n" ]; do
    pct=$(( i * 100 / n ))
    echo XXX 
    echo $i 
    echo "${msgs[i]}" 
    echo XXX 
    echo "$pct" 
    eval "${commands[i]}" 
    i=$((i + 1)) 
    sleep 1
done | whiptail --title "installation Fablab Tools" --gauge "Please wait..." 10 60 0
    
# while [ $processed -le $items ]; do
#    pct=$(( $processed * 100 / $items ))
#    echo "***"
#    echo $processed
#    echo ${msgs["$processed"]}
#    echo ***
#    echo "$pct"
#    processed=$((processed+1))
#    sleep 1
# done

sleep 1
whiptail --title "Scrollbox" --scrolltext --msgbox "installation completed successfully" 10 60 0


