#!/usr/bin/env bash

pip3 install -U pip

pip3 install -U BeautifulSoup4
pip3 install -U bson
pip3 install -U chardet
pip3 install -U click
pip3 install -U cloudant
pip3 install -U cython
pip3 install -U cytoolz
pip3 install -U fake-useragent
pip3 install -U fasteners
pip3 install -U feather-format
pip3 install -U feedparser
pip3 install -U flask
pip3 install -U flask_cors
pip3 install -U fuzzywuzzy
pip3 install -U gensim
pip3 install -U google-api-python-client
pip3 install -U google-cloud-datastore
pip3 install -U google-cloud-storage
pip3 install -U hdbscan
pip3 install -U jupyter
pip3 install -U more-itertools
pip3 install -U mypy
pip3 install -U nltk
pip3 install -U nose
pip3 install -U pandas
pip3 install -U pep257
pip3 install -U pep8
pip3 install -U pip-tools
pip3 install -U pycodestyle
pip3 install -U pycrypto
pip3 install -U pycurl
pip3 install -U pyemd
pip3 install -U pyflakes
pip3 install -U pygithub
pip3 install -U pyldavis
pip3 install -U pympler
pip3 install -U pymysql
pip3 install -U PyPDF2
pip3 install -U python-dateutil
pip3 install -U python-Levenshtein
pip3 install -U pytz
pip3 install -U regex
pip3 install -U requests
pip3 install -U rethinkdb
pip3 install -U retry
pip3 install -U scikit-learn
pip3 install -U tabulate
pip3 install -U textract
pip3 install -U typing
pip3 install -U ujson
pip3 install -U unicodecsv
pip3 install -U watchdog
pip3 install -U wordcloud

ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future pip3 install -U pgmagick
STATIC_DEPS=true pip3 install -U lxml
pip3 install -U cssselect
