#!/usr/bin/env bash

pips=(
  pip
  pip3
)

packages=(
  BeautifulSoup4
  bson
  chardet
  click
  cloudant
  cytoolz
  fake-useragent
  feather
  feedparser
  flask
  flask_cors
  jupyter
  more-itertools
  nltk
  nose
  pandas
  pep257
  pep8
  pip-tools
  pycrypto
  pyflakes
  pympler
  pymysql
  PyPDF2
  python-dateutil
  pytz
  regex
  requests
  rethinkdb
  retry
  scikit-learn
  tabulate
  typing
  ujson
  unicodecsv
)

for pip in ${pips[@]}; do
  $pip install "${packages[@]}"
  ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future $pip install pgmagick
  STATIC_DEPS=true $pip install lxml
  $pip install cssselect
done

# Only available for Python 3
pip3 install mypy-lang
