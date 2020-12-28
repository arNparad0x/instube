#/bin/bash

tmp=$(pwd)
cd ~
envi=$(pwd | grep 'com.termux')
envi=$?

if [ $envi -eq 0 ];
then
 cd $tmp
 cp vdo.sh ~/../usr/bin/vdo
 chmod +x ~/../usr/bin/vdo
 rm -rf ../instube
 echo -e "download videos from \\033[4mvdo\\033[0m command"
 echo -e "you can add video \\033[4;36mlink\\033[0m along with \\033[4mvdo\\033[0m command"
 echo -e "or we will ask you for \\033[4;36mlink\\033[0m"
 echo 'vdo' > ~/../usr/bin/instube
 chmod +x ~/../usr/bin/instube
else
 cd $tmp
 cp vdo.sh /bin/vdo
 chmod +x /bin/vdo
 rm -rf ../instube
 echo -e "download videos from \\033[4mvdo\\033[0m command"
 echo -e "you can add video \\033[4;36mlink\\033[0m along with \\033[4mvdo\\033[0m command"
 echo -e "or we will ask you for \\033[4;36mlink\\033[0m"
 echo 'vdo' > /bin/instube
 chmod +x /bin/instube
fi
