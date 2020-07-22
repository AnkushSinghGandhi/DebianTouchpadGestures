sudo gpasswd -a $USER input
read -p "restart and run the script again then press enter"
echo "updating and upgrading"
sudo apt upgrade && sudo apt update
echo ' '
echo "installing various packages to enable gestures"
cd ~
sudo apt install wmctrl python3 python3-setuptools xdotool python3-gi libinput-tools python-gobject
cd Downloads
wget https://github.com/bulletmark/libinput-gestures/archive/master.zip
unzip master.zip
cd /home/ankush/Downloads/libinput-gestures-master/
sudo ./libinput-gestures-setup install
cd ~
libinput-gestures-setup autostart
libinput-gestures-setup start
cd Downloads 
wget https://gitlab.com/cunidev/gestures/-/archive/master/gestures-master.zip
unzip gestures-master.zip
echo "started installing gestures app"
cd /home/ankush/Downloads/gestures-master/
sudo python3 setup.py install