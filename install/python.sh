#!/usr/bin/env bash

pip install -U pip

pip install -U BeautifulSoup4
pip install -U black
pip install -U bson
pip install -U chardet
pip install -U click
pip install -U cloudant
pip install -U cython
pip install -U cytoolz
pip install -U dateparser
pip install -U eli5
pip install -U fake-useragent
pip install -U fasteners
pip install -U feather-format
pip install -U feedparser
pip install -U flair
pip install -U flake8
pip install -U flask
pip install -U flask_cors
pip install -U Flask-Sockets
pip install -U fuzzywuzzy
pip install -U gensim
pip install -U google-api-python-client
pip install -U google-cloud-datastore
pip install -U google-cloud-storage
pip install -U hdbscan --user
pip install -U imblearn
pip install -U jupyter
pip install -U jupyterlab
pip install -U langid
pip install -U matplotlib
pip install -U more-itertools
pip install -U mypy
pip install -U nltk
pip install -U numpy
pip install -U nose --user
pip install -U openpyxl
pip install -U oauth2client
pip install -U pandas
pip install -U pep257
pip install -U pep8
pip install -U pgmagick
pip install -U pillow
pip install -U pip-tools
pip install -U pycodestyle
pip install -U pycrypto
pip install -U pyemd
pip install -U pyflakes
pip install -U pygithub
pip install -U pyldavis
pip install -U pyls-isort
pip install -U pyls-mypy
pip install -U pympler
pip install -U pymysql
pip install -U PyPDF2
pip install -U python-dateutil
pip install -U 'python-language-server[all]'
pip install -U python-Levenshtein
pip install -U pytz
pip install -U regex
pip install -U requests
pip install -U requests-html
pip install -U retry
pip install -U scikit-learn
pip install -U scipy
pip install -U slacker
pip install -U slackclient
pip install -U tabulate
pip install -U textract
pip install -U tqdm
pip install -U typing
pip install -U ujson
pip install -U watchdog
pip install -U whoosh
pip install -U wordcloud

PYCURL_SSL_LIBRARY=openssl pip install --compile --no-cache-dir pycurl

STATIC_DEPS=true pip install -U lxml
pip install -U cssselect
