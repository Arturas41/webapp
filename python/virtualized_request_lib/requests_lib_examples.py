import requests
from requests.exceptions import HTTPError, Timeout
from requests.auth import HTTPBasicAuth


def printResponse(resp):
    print(f'Response Code: +----- {resp.status_code} -----+')
    print('\n')

    print('Headers: +----------------------+')
    print(resp.headers)
    print('\n')

    print('Returned data: +----------------------+')
    print(resp.text)


# Use requests to issue an HTTP GET request
#url = 'http://httpbin.org/xml'
#resp = requests.get(url)
#printResponse(resp)

# Send some parameters to the URL via a GET request
# Requests handles this for you, no manual encoding
#payload = {'Size': 'Large', 'Cream': True, 'Sugar': False}
#url = 'http://httpbin.org/get'
#resp = requests.get(url, params=payload)
#printResponse(resp)

# Send some parameters to the URL via a GET request
# Requests handles this for you, no manual encoding
#payload = {'Size': 'Large', 'Cream': True, 'Sugar': False}
#url = 'http://httpbin.org/post'
#resp = requests.post(url, data=payload)
#printResponse(resp)

# Pass a custom header to the server
#url = "http://httpbin.org/get"
#customHeader = {'User-Agent': 'Gardens-Delight-App / 1.0.1'}
#resp = requests.get(url, headers=customHeader)
#printResponse(resp)

# try:
#     url = 'http://httpbin.org/status/404'
#     resp = requests.get(url)
#     resp.raise_for_status()
#     printResponse(resp)
# except HTTPError as error:
#     print(f'Http Error: {error}')
# except Timeout as error:
#     print(f'Request timed out: {error}')

# try:
#     url = 'http://httpbin.org/delay/5'
#     resp = requests.get(url, timeout=3)
#     resp.raise_for_status()
#     printResponse(resp)
# except HTTPError as error:
#     print(f'Http Error: {error}')
# except Timeout as error:
#     print(f'Request timed out: {error}')

# Access a URL that requires authentication - the format of this
# URL is that you provide the username/password to auth against
url = 'https://httpbin.org/basic-auth/vegibit/secret'

# Create a credentials object using HTTPBasicAuth
# credentials = HTTPBasicAuth('vegibit', 'secretASDF')
credentials = HTTPBasicAuth('vegibit', 'secret')

# Issue the request with the authentication credentials
resp = requests.get(url, auth=credentials)
printResponse(resp)
