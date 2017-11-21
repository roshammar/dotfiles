#!/bin/bash

mkdir css js fonts img tmp

curl -s https://api.github.com/repos/jgthms/bulma/releases/latest \
| grep browser_download_url \
| head -n 1 \
| cut -d '"' -f 4 \
| xargs curl -L -o tmp/bulma.zip

unzip tmp/bulma.zip -d tmp
cp tmp/bulma-*/css/bulma.css css

curl http://fontawesome.io/assets/font-awesome-4.7.0.zip -L -o tmp/fonts.zip
unzip tmp/fonts.zip -d tmp
cp tmp/font-awesome-*/fonts/* fonts
cp tmp/font-awesome-*/css/font-awesome.min.css css

curl http://builds.handlebarsjs.com.s3.amazonaws.com/handlebars-v4.0.10.js -o js/handlebars.js

curl https://raw.githubusercontent.com/h5bp/html5-boilerplate/master/src/index.html -o index.html

rm -rf tmp