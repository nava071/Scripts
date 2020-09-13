#! /bin/bash

myip=$(curl https://ipinfo.io/ip)
# echo "$myip"
curl -d '{"ip": "'"$myip"'", "sender": "Navaneethan"}' -H 'Content-Type: application/json' -X POST 'https://slack-url'
