#!/bin/bash
# =========================================
clear
MYIP2=$(wget -qO- ipv4.icanhazip.com);
domain=$(cat /usr/local/etc/xray/domain)
user=TRIAL-`echo $RANDOM | head -c4`
uuid=$(cat /proc/sys/kernel/random/uuid)
masaaktif=1
echo ""
echo ""
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`

sed -i '/#tr$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/trojanws.json
sed -i '/#trnone$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/trnone.json

trojanlink1="trojan://${uuid}@${domain}:443?type=ws&security=tls&host=${domain}&path=/trojan-tls&sni=${domain}#XRAY_TROJAN_TLS_${user}"
trojanlink2="trojan://${uuid}@${domain}:80?type=ws&security=none&host=${domain}&path=/trojan-ntls#XRAY_TROJAN_NTLS_${user}"

systemctl restart xray@trojanws.service
systemctl restart xray@trnone.service
service cron restart

clear
echo -e ""
echo -e "════[TRIAL XRAY TROJAN WS]════"
echo -e "Remarks           : ${user}"
echo -e "Domain            : ${domain}"
echo -e "Port TLS          : 443"
echo -e "Port None TLS     : 80, 8080, 8880"
echo -e "ID                : ${uuid}"
echo -e "Security          : TLS"
echo -e "Encryption        : None"
echo -e "Network           : WS"
echo -e "Path TLS          : /trojan-tls"
echo -e "Path NTLS         : /trojan-ntls"
echo -e "═══════════════════"
echo -e "Link WS TLS       : ${trojanlink1}"
echo -e "═══════════════════"
echo -e "Link WS None TLS  : ${trojanlink2}"
echo -e "═══════════════════"
echo -e "Created On        : $hariini"
echo -e "Expired On        : $exp"
echo -e "═══════════════════"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
