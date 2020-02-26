#!/bin/bash

clear
echo "*******************************************"
echo "*            Выберите действие            *"
echo "*******************************************"
echo 
echo " 1.  Infinite-bommer Arm64 с tor "
echo " 2.  Infinite-bommer Arm64 "
echo " 3.  Infinite-bommer Arm с tor "
echo " 4.  Infinite-bommer Arm "
echo " 5.  Infinite-bommer x86 с tor "
echo " 6.  Infinite-bommer x86 "
echo " 7.  Infinite-bommer x64 с tor "
echo " 8.  Infinite-bommer x64  "
echo " 9.  Узнать архитектуру вашего процессора "
echo " 11. Удалить Infinite-bommer полностью "
echo " 0.  Выход "
echo ""
echo " Ваш выбор:  "
read number
case $number in
    1)
     cp -r ~/infibomb/IB_arm64tor/tor /data/data/com.termux/files/usr/bin/
     cp ~/infibomb/IB_arm64tor/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_arm64tor/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    2)
     cp ~/infibomb/IB_arm64/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_arm64/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    3)
     cp -r ~/infibomb/IB_armtor/tor /data/data/com.termux/files/usr/bin/
     cp ~/infibomb/IB_armtor/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_armtor/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    4)  
     cp ~/infibomb/IB_arm/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_arm/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    5)
     cp -r ~/infibomb/IB_x86tor/tor /data/data/com.termux/files/usr/bin/
     cp ~/infibomb/IB_x86tor/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_x86tor/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    6)
     cp ~/infibomb/IB_x86/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_x86/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    7)
     cp -r ~/infibomb/IB_x64tor/tor /data/data/com.termux/files/usr/bin/
     cp ~/infibomb/IB_x64tor/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_x64tor/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    8)
     cp ~/infibomb/IB_x64/infinite-bomber /data/data/com.termux/files/usr/bin/infinite
     cp ~/infibomb/IB_x64/services.yaml /data/data/com.termux/files/usr/bin/services.yaml
     chmod 777 /data/data/com.termux/files/usr/bin/infinite   
     infinite
    ;;
    9)
     cd /
     head proc/cpuinfo
    ;;
    0)
     exit
    ;;
    11)	
     echo " Удалить Infinite-bomber c вашего устройства - y/n"
     read choice
     if [ $choice = "y" ]
     then
      rm -rf /data/data/com.termux/files/usr/bin/tor
      rm -f /data/data/com.termux/files/usr/bin/infinite
      rm -f /data/data/com.termux/files/usr/bin/services.yaml 
      rm -rf ~/infibomb
      echo " Удалено "
     else
      echo "Отмена"
      sleep 3
      sh infibomb/install.sh
     fi
    ;;
    *)
      echo "Некорректный ввод"
 esac
                                
                                    
