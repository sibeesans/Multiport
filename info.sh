#!/bin/bash
# =========================================
clear
NC='\e[0m'
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'

echo ""
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "      ${WB}Xray Websocket Autoscript By BagoesVpn${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${WB}»»» Protocol Service «««  |  »»» Network Protocol «««${NC}  "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Vmess Websocket${NC}         ${CB}|${NC}  ${YB}- Websocket (CDN) TLS${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Vless Websocket${NC}         ${CB}|${NC}  ${YB}- Websocket (CDN) NTLS${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Trojan Websocket${NC}        ${CB}|${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Trojan TCP${NC}              ${CB}|${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "             ${WB}»»» Server Information «««${NC}                 "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Fail2Ban                : [ON]${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Dflate                  : [ON]${NC}"
echo -e "  ${CB}♦️${NC} ${YB}IPtables                : [ON]${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Auto-Reboot             : [ON]${NC}"
echo -e "  ${CB}♦️${NC} ${YB}IPV6                    : [OFF]${NC}"
echo -e ""
echo -e "  ${CB}♦️${NC} ${YB}Autoreboot On 06.00 GMT +8${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Backup & Restore VPS Data${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Automatic Delete Expired Account${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Bandwith Monitor${NC}"
echo -e "  ${CB}♦️${NC} ${YB}RAM & CPU Monitor${NC}"
echo -e "  ${CB}♦️${NC} ${YB}Check Login User${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "              ${WB}»»» Network Port Service «««${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${CB}♦️${NC} ${YB}HTTP                    : 443${NC}"
echo -e "  ${CB}♦️${NC} ${YB}HTTPS                   : 80, 55, 8080, 8880${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
