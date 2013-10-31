#!/bin/bash

./generate-web-site.sh

rsync -avz * sebhtml,denovoassembler@web.sourceforge.net:htdocs

git push origin master
git checkout gh-pages
git merge master
git push origin gh-pages
git checkout master

