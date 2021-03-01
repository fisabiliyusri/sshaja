# !/bin/bash
# Script auto create user SSH

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`curl ipv4.icanhazip.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "==========================="
echo -e "====Informasi SSH Account==" 
echo -e "==== Premium Akun SSH =====" 
echo -e "Host SSH : #$IP" 
echo -e "Port SSH" 
echo -e "OpenSSH : 143,200,8000,40000" 
echo -e "Dropbear : 44,77,9000,55000" 
echo -e "SSL/TLS SSH : 443" 
echo -e "SSL/TLS OpenSSH : 43,700,800,4000" 
echo -e "SSL/TLS Dropbear : 444,777,9900,56000" 
echo -e "BadVPN-UDPGW : 7100,7200,7300"
echo -e "Speed Server : 1 Gbps" 
echo -e "Username : $Login " 
echo -e "Password : $Pass" 
echo -e "---------------------------" 
echo -e "Aktif Sampai      : $exp" 
echo -e "==========================="
echo -e "Script Mod by Sulaiman L"  
echo -e ""
