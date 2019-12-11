#!/bin/bash

echo " Script Anti Brute-Force DirectAdmin "
echo " Ashkan Ebrahimi "


rm -f /usr/local/directadmin/scripts/custom/block_ip.sh
echo "remove file block ip ---->100%"
rm -f /usr/local/directadmin/scripts/custom/unblock_ip.sh
echo "remove file unblock ip ---->100%"
rm -f /usr/local/directadmin/scripts/custom/brute_force_notice_ip.sh  
echo "remove file brute force notice ip ---->100%"
rm -f /usr/local/directadmin/scripts/custom/show_blocked_ips.sh 
echo "remove file show blocked ips ---->100%"
wget -O /usr/local/directadmin/scripts/custom/block_ip.sh  https://codeberg.org/Ashkan/anti_brute-force_Directadmin/raw/branch/master/otherscript/csf_block_ip.sh.txt 
echo " Download file csf block ip -----> 100%"
wget -O /usr/local/directadmin/scripts/custom/unblock_ip.sh  https://codeberg.org/Ashkan/anti_brute-force_Directadmin/raw/branch/master/otherscript/csf_unblock_ip.sh.txt 
echo " Download file csf unblock ip -----> 100%"
wget -O /usr/local/directadmin/scripts/custom/show_blocked_ips.sh https://codeberg.org/Ashkan/anti_brute-force_Directadmin/raw/branch/master/otherscript/csf_show_blocked_ips.sh.txt  
echo " Download file csf csf show blocked ips -----> 100%"
chmod 700 /usr/local/directadmin/scripts/custom/block_ip.sh 
echo " Set permission file block ip -----> 100% "
chmod 700 /usr/local/directadmin/scripts/custom/show_blocked_ips.sh 
echo " Set permission file show blocked ips -----> 100% "
chmod 700 /usr/local/directadmin/scripts/custom/unblock_ip.sh  
echo " Set permission file unblock ip -----> 100% "
touch /root/blocked_ips.txt  
touch /root/exempt_ips.txt 
wget -O /usr/local/directadmin/scripts/custom/brute_force_notice_ip.sh https://codeberg.org/Ashkan/anti_brute-force_Directadmin/raw/branch/master/otherscript/brute_force_notice_ip.sh.txt  
echo " Download file brute force notice ip -----> 100%"
chmod 700 /usr/local/directadmin/scripts/custom/brute_force_notice_ip.sh  
chown diradmin:diradmin /usr/local/directadmin/scripts/custom/block_ip.sh  
chown diradmin:diradmin /usr/local/directadmin/scripts/custom/unblock_ip.sh  
chown diradmin:diradmin /usr/local/directadmin/scripts/custom/brute_force_notice_ip.sh  
chown diradmin:diradmin /usr/local/directadmin/scripts/custom/show_blocked_ips.sh

echo "Script Has Run And Enable"
echo "End"