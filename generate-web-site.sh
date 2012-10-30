#!/bin/bash

for page in $(ls page-*)
do
	key=$(echo $page|sed 's/page\-//g'|sed 's/.txt//g')
	htmlFile=$key".html"
	cp scaffold.txt $htmlFile
	./generatePage.py $page $htmlFile
done
