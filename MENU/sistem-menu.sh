#!/bin/bash
clear
red='\e[1;31m'
green='\e[0;32m'
blue='\e[0;34m'
blue_b='\e[0;94m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
IZIN=$(curl https://raw.githubusercontent.com/SandakanVPNTrickster/ip/main/access | grep $MYIP | awk '{print $4}')
if [ $MYIP = $IZIN ]; then
    echo -e ""
    clear
else
  echo -e ""
    echo -e "${green}ACCESS DENIED...PM TELEGRAM OWNER${NC}"
    exit 1
fi
echo -e " "
IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/v2ray/domain)
cekxray="$(openssl x509 -dates -noout < /etc/v2ray/v2ray.crt)"                                      
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
name=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/ip/main/access | grep $IPVPS | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/ip/main/access | grep $IPVPS | awk '{print $3}')
echo -e  " "
echo -e  " ═════════════════════════════════════════════════"
echo -e  " ${green}                       SYSTEM MENU${NC} "
echo -e  " ═════════════════════════════════════════════════"

echo -e  " [  1 ] ADD/CHANGE DOMAIN VPS"
echo -e  " [  2 ] CHANGE PORT SERVICE"
echo -e  " [ 3 ] RENEW V2RAY AND XRAY CERTIFICATION"
echo -e  " [ 4 ] WEBMIN MENU"
echo -e  " [ 5 ] CHECK RAM USAGE"
echo -e  " [ 6 ] DISPLAY SYSTEM INFORMATION"
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " menu
echo -e "\e[0m"
 case $menu in
   1)
   add-host
   ;;
   2)
   change
   ;;
   3)
   recert-xrayv2ray
   ;;
   4)
   wbmn
   ;;
   5)
   ram
   ;;
   6)
   info
   ;;
   0)
   sleep 0.5
   clear
   jinggo
   ;;
   *)
   echo -e "ERROR!! Please Enter an Correct Number"
   sleep 1
   clear
   menu
   ;;
   esac

