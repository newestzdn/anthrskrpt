#!bin/bash

for file in *.zip;
do curl -T "$file" https://pixeldrain.com/api/file/; done >> anu1.txt


