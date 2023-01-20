#!/bin/bash
# =========================================
clear
MYIP2=$(wget -qO- ipv4.icanhazip.com);
domain=$(cat /root/domain)
user=TRIAL-`echo $RANDOM | head -c4`
uuid=$(cat /proc/sys/kernel/random/uuid)
masaaktif=1
echo ""
echo ""
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
hariini=`date -d "0 days" +"%Y-%m-%d"`

sed -i '/#tr$/a\### '"$user $exp"'\
},{"password": "'""$uuid""'","email": "'""$user""'"' /usr/local/etc/xray/trojan.json

trojanlink="trojan://${uuid}@${sts}${domain}:443?security=tls&type=tcp&allowInsecure=1&sni=${domain}#${user}"

systemctl restart xray@trojan.service
service cron restart

clear
echo -e ""
echo -e "════[TRIAL XRAY TROJAN TCP]════"
echo -e "Remarks           : ${user}"
echo -e "Domain            : ${domain}"
echo -e "Port              : 443"
echo -e "Key               : ${uuid}"
echo -e "Network           : TCP"
echo -e "Security          : TLS"
echo -e "AllowInsecure     : True"
echo -e "═══════════════════"
echo -e "Link XRAY Trojan  : ${trojanlink}"
echo -e "═══════════════════"
echo -e "Created On        : $hariini"
echo -e "Expired On        : $exp"
echo -e "═══════════════════"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
