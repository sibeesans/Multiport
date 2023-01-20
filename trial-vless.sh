#!/bin/bash
# =========================================
clear
MYIP2=$(wget -qO- ipv4.icanhazip.com);
domain=$(cat /usr/local/etc/xray/domain)
user=TRIAL-`echo $RANDOM | head -c4`
uuid=$(cat /proc/sys/kernel/random/uuid)
masaaktif=1
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`

sed -i '/#tls$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/vless.json
sed -i '/#none$/a\### '"$user $exp"'\
},{"id": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/vnone.json

vlesslink1="vless://${uuid}@${domain}:443?type=ws&encryption=none&security=tls&host=${domain}&path=/vless-tls&allowInsecure=1&sni=${domain}#${user}"
vlesslink2="vless://${uuid}@${domain}:80?type=ws&encryption=none&security=none&host=${domain}&path=/vless-ntls#${user}"

systemctl restart xray@vless.service
systemctl restart xray@vnone.service
service cron restart

clear
echo -e ""
echo -e "════[TRIAL XRAY VLESS WS]════"
echo -e "Remarks           : ${user}"
echo -e "Domain            : ${domain}"
echo -e "Port TLS          : 443"
echo -e "Port None TLS     : 80, 55, 8080, 8880"
echo -e "ID                : ${uuid}"
echo -e "Security          : TLS"
echo -e "Encryption        : None"
echo -e "Network           : WS"
echo -e "Multipath         : /yourpath (XRAY Core Mod Only)"
echo -e "═══════════════════"
echo -e "Link WS TLS       : ${vlesslink1}"
echo -e "═══════════════════"
echo -e "Link WS None TLS  : ${vlesslink2}"
echo -e "═══════════════════"
echo -e "Created On        : $hariini"
echo -e "Expired On        : $exp"
echo -e "═══════════════════"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
