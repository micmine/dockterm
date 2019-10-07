#!/bin/bash

os=$(echo -e "debian\nubuntu\nkali\narch\nfedora\ncentos" | dmenu -l 100)

if [ "$os" = "debian" ]; then
  fullName="library/debian"
elif [ "$os" = "ubuntu" ]; then
  fullName="ubuntu"
elif [ "$os" = "kali" ]; then
  fullName="kalilinux/kali-linux-docker" 
elif [ "$os" = "arch" ]; then
  fullName="archlinux/base"
elif [ "$os" = "fedora" ]; then
  fullName="fedora"
elif [ "$os" = "centos" ]; then                
  fullName="centos"
fi

docker pull $fullName
termite -e "docker run --rm --name $os -it -h $os $fullName /bin/bash"


