import urllib.request
import urllib.parse
from urllib.error import HTTPError, URLError
from http import HTTPStatus

# specify the URL to get data from
url = 'http://httpbin.org/xml'

# open the URL and fetch some data
result = urllib.request.urlopen(url)

# Print the resulting http status code
print('Result code: {0}'.format(result.status))

# print the response data headers
print('Headers: ---------------------')
print(result.getheaders())

# print the actual response data
print('Returned data: ---------------------')
print(result.read().decode('utf-8'))

# set up Url for the request
url = 'http://httpbin.org/get'

result = urllib.request.urlopen(url)

print('Result code: {0}'.format(result.status))
print('Returned data: ----------------------')
print(result.read().decode('utf-8'))

import urllib.request
import urllib.parse

# set up Url for the request
url = 'http://httpbin.org/get'

# define sample data to pass to the GET request
args = {
    'color': 'Blue',
    'shape': 'Circle',
    'is_active': True
}

# url-encoded data before passing as arguments
data = urllib.parse.urlencode(args)

# issue the request with the data params as part of the URL
result = urllib.request.urlopen(url + '?' + data)

print('Result code: {0}'.format(result.status))
print('Returned data: ----------------------')
print(result.read().decode('utf-8'))

# issue the request with a data parameter to use POST
url = 'http://httpbin.org/post'

# define sample data to pass to the GET request
args = {
    'color': 'Blue',
    'shape': 'Circle',
    'is_active': True
}

# url-encoded data before passing as arguments
data = urllib.parse.urlencode(args)

data = data.encode()
result = urllib.request.urlopen(url, data=data)

print('Result code: {0}'.format(result.status))
print('Returned data: ----------------------')
print(result.read().decode('utf-8'))

url = 'http://httpbin.org/htmlASDF'

# wrap the web request in a try catch block
try:
    result = urllib.request.urlopen(url)
    print('Result code: {0}'.format(result.status))
    if (result.getcode() == HTTPStatus.OK):
        print(result.read().decode('utf-8'))

# happens on a non-success error code
except HTTPError as err:
    print('There was an HTTP Error with code: {0}'.format(err.code))

# happens when there is something wrong with the URL itself
except URLError as err:
    print('There has been a catastrophic failure. {0}'.format(err.reason))
