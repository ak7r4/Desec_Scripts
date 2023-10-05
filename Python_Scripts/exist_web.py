#!/usr/bin/python
import requests
import sys

site = requests.get(sys.argv[1])
status = site.status_code

if (status == 200):
	print("exist")
else:
	print("nonexistent")
