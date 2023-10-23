import requests

x = requests.api.get('https://www.google.com')
print(x.status_code)