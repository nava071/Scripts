#! /bin/bash

curl https://ping.eu > ippage.html
myip=$(grep -i 'your ip' ippage.html)
curl -d '{"ip": "'"$myip"'", "sender": "Navaneethan"}' -H 'Content-Type: application/json' -X POST 'https://slack-url'
