#!/bin/bash
sudo apt update
sudo apt install steamlink

### Making Plex Accessable via RetroPie ###
cd /home/pi/
mkdir -p /home/pi/RetroPie/roms/steamlink

### make .sh to launch plex ###
echo '#!/bin/bash
/usr/local/bin/steamlink
' > /home/pi/RetroPie/roms/steamlink/launch_steamlink.sh

sudo chmod a+x /home/pi/RetroPie/roms/steamlink/launch_steamlink.sh
sudo chown -R pi:pi /home/pi/RetroPie/roms/steamlink