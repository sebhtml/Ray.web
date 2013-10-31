#!/bin/bash

./generate-web-site.sh

rsync -avz * sebhtml,denovoassembler@web.sourceforge.net:htdocs

git push origin master
