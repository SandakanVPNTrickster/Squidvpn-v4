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
dns="$(cat /etc/resolvconf/resolv.conf.d/head)"
dns2="$(cat /etc/openvpn/update-resolv-conf)"
netlix () {
if [ "$dns2" = "&dns" ]; then
   echo -e "$dns2"
   clear
fi
 else
    echo -e "${red}DNS MY NOT SET"
fi
}
echo -e " "
IPVPS=$(curl -s icanhazip.com)
DOMAIN=$(cat /etc/v2ray/domain)
cekxray="$(openssl x509 -dates -noout < /etc/v2ray/v2ray.crt)"                                      
expxray=$(echo "${cekxray}" | grep 'notAfter=' | cut -f2 -d=)
name=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/ip/main/access | grep $IPVPS | awk '{print $2}')
exp=$(curl -sS https://raw.githubusercontent.com/SandakanVPNTrickster/ip/main/access | grep $IPVPS | awk '{print $3}')
echo -e  " "
echo -e  " ═════════════════════════════════════════════════"
echo -e  " ${green}       PREMIUM SCRIPT VPN BY SANDAKAN VPN TRICKSTER${NC} "
echo -e  " ═════════════════════════════════════════════════"

echo -e  " ${green}IP VPS NUMBER               : $IPVPS${NC}"
echo -e  " ${green}DOMAIN                      : $DOMAIN${NC}"
echo -e  " ${green}OS VERSION                  : `hostnamectl | grep "Operating System" | cut -d ' ' -f5-`"${NC}
echo -e  " ${green}KERNEL VERSION              : `uname -r`${NC}"
echo -e  " ${green}EXP DATE CERT V2RAY/XRAY    : $expxray${NC}"
echo -e  " ${green}CLIENT NAME                 : $name${NC}"
echo -e  " ${green}EXP SCRIPT ACCSESS          : $exp${NC}"
echo -e  " ${green}DNS MY                      : $dns${NC}"
echo -e  " "
echo -e  " ═════════════════════════════════════════════════"
echo -e  " ${green}                       MENU UTAMA${NC} "
echo -e  " ═════════════════════════════════════════════════"
echo -e  " •01 SSH & OPENVPN" 
echo -e  " •02 WIREGUARD" 
echo -e  " •03 SHADOWSOCKS R" 
echo -e  " •04 SHADOWSOCKS OBFS"
echo -e  " •05 V2RAY CORE" 
echo -e  " •06 XRAY CORE" 
echo -e  " •07 TROJAN GFW"  
echo -e  " •08 LOG CREATED CONFIG"
echo -e  "  "
echo -e  " •09 SYSTEM MENU"
echo -e  " •10 GEO LOCATION MENU V1"
echo -e  " •11 GEO LOCATION MENU V2"

echo -e  "  "
echo -e  " •12 REBOOT VPS"
echo -e  " •13 SPEEDTEST VPS"
echo -e  " •14 CHECK SERVICE ERROR"
echo -e  " •15 UPDATE SCRIPT"
echo -e  "  "
echo -e  " ${green}[  0 ] EXIT MENU${NC}  "
echo -e  "  "
echo -e "\e[1;31m"
read -p  "     Please select an option :  " menu
echo -e "\e[0m"
 case $menu in
   1 | 01)
   mssh
   ;;
   2 | 02)
   mwg
   ;;
   3 | 03)
   mssr
   ;;
   4 | 04)
   mss
   ;;
   5 | 05)
   mv2raycore
   ;;
   6 | 06)
   mxraycore
   ;;
   7 | 07)
   mtrojan
   ;;
   8 | 08)
   clear
       cat /etc/log-create-user.log
       read -n 1 -s -r -p "Press any key to back on menu"
       menu
   ;;
   9 | 09)
   sistem-menu
   ;;
   10)
   geo
   ;;
   11)
   netflix
   ;;
   12)
   reboot
   ;;
   13)
   speedtest
   ;;
   14)
   checksystem
   ;;
   15)
   update
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
