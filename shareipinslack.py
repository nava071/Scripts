''' This is to send my public ip to slack channel '''

import requests
import json


def get_ip():
    # response=requests.get("https://ident.me")  Fails to get ipv4 address from my mobile network jio
    response = requests.get("https://ipinfo.io/ip")
    if response.status_code != 200:
        response = f"Error : {response.status_code}"
    else:
        response = response.text
    return response


def postToSlack(slack_url, response):
    data = {'ip': response,
            'sender': "Navaneethan"}
    headers = {'Content-Type': 'application/json'}
    requests.post(url=slack_url, json=data, headers=headers)


if __name__ == "__main__":
    with open("configs/shareipinslack_config.json", 'r') as file:
        config = json.load(file)

    resp = get_ip()
    postToSlack(config['SLACK_URL'], resp)
