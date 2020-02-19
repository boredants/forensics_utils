from bs4 import BeautifulSoup as bs
import requests
import warnings
import sys


url = input("Enter a site to scrape: ")

with warnings.catch_warnings():
    warnings.simplefilter("ignore")
    try:
        r = requests.get(url, verify=False)

        data = r.text

        soup = bs(data, features="lxml")

        for link in soup.select('a[href^=mailto]'):
            print((link.get('href'))[7:])  # the slice may need to be adjusted

    except Exception as e:
        print(e)
        sys.exit()
