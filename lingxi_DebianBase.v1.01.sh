#！/bin/bash

# image sources.list --------------------------------------------------------------------------------------------------------------
mv /etc/apt/sources.list /etc/apt/sources.list.bak
touch /etc/apt/sources.list
echo "
    # aliyunsource----------------------------
    deb https://mirrors.aliyun.com/debian/ bullseye main non-free contrib 
    deb-src https://mirrors.aliyun.com/debian/ bullseye main non-free contrib 
    deb https://mirrors.aliyun.com/debian-security/ bullseye-security main 
    deb-src https://mirrors.aliyun.com/debian-security/ bullseye-security main 
    deb https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib 
    deb-src https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib 
    deb https://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib 
    deb-src https://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib" >> /etc/apt/sources.list
    apt update -y && apt install apt upgrade -y 


# installPackage --------------------------------------------------------------------------------------------------------------------
apt install sshfs -y && apt install cifs-utils -y && apt install vim -y


# //.profile  ------------------------------------------------------------------------------------------------------------------------
echo 'export PATH=/usr/loca/sbin:/usr/sbin:/sbin:$PATH:' >> /root/.profile
echo 'export PATH=/usr/loca/sbin:/usr/sbin:/sbin:$PATH:' >> /home/lingxi/.profile


# .bashrc  -------------------------------------------------------------------------------------------------------------------------
echo "# root.bashrc conf
  alias ls='ls $LS_OPTIONS'
  alias ll='ls $LS_OPTIONS -l'
  alias l='ls $LS_OPTIONS -lA'
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'
  alias ls='ls --color'" >> /root/.bashrc

  echo "# lingxi.bashrc conf 
  alias ls='ls $LS_OPTIONS'
  alias ll='ls $LS_OPTIONS -l'
  alias l='ls $LS_OPTIONS -lA'
  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'
  alias ls='ls --color'" >> /home/lingxi/.bashrc


# change ssh_config ----------------------------------------------------------------------------------------------------------------------
touch /etc/ssh/sshd_config.d/RootsshLogin.conf
echo "
  PermitRootLogin yes
  PasswordAuthentication yes" >> /etc/ssh/sshd_config.d/RootsshLogin.conf && service ssh restart


init 6
