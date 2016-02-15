#!/bin/sh
# install_BlueGlass-XCursors-3D-0.4.sh 

echo;echo "You are going to copy BlueGlass-XCursors-3D-0.4 to /usr/share/icons/BlueGlass-XCursors-3D-0.4"
read -p "Continue install (y / n) ?" ans

if [ "$ans" == "y" ]; then
  
    sudo mkdir /usr/share/icons/BlueGlass-XCursors-3D-0.4
    sudo cp -faxv ./* /usr/share/icons/BlueGlass-XCursors-3D-0.4/
    if [ $? = 0 ]; then 					# if success
    echo;echo "Now you can try select BlueGlass-XCursors-3D-0.4 pointer theme in your desktop environments";echo
    else
    exit 1
    fi
   
fi