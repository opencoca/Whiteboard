# Used to load settings
# 

import sys
import json
import os

LOADFROM = 'settings.json'

settings = None

def ensure_loaded():
	global settings
	if settings is None:
		settings = {}
		with open(LOADFROM) as thefile:
			data = json.loads(thefile.read())
			for key, value in data.items():
				settings[key] = value
				if type(value) is str:
					if value.startswith('env:'):
						# Load from environment variable
						settings[key] = os.environ[value[4:]]
					elif value.startswith('param:'):
						# Load from command-line parameter
						inx = ind(value[6:])
					elif value.startswith(':'):
						# Command escaping
						settings[key] = value[1:]

def get(name):
	global settings
	ensure_loaded()
	return settings[name]
