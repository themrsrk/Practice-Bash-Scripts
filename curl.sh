#! /bin/bash

url="https://proof.ovh.net/files/1Mb.dat"
#curl ${url} -O  #-O command  inherit the actual file name and if you want to download it with different name you can put the name after -O
#curl ${url} -o NewFileDownload


#If you want to know the information about file then you can put -I before url
curl -I ${url}
