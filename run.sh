#!/bin/bash

#TEMPD=$(mktemp -d -t chaffctf_XXXXXXXX)
#rm -rf ${TEMPD}/*
#cp ${1} ${TEMPD}/${1}
#cp flag ${TEMPD}/flag
#sudo chown root:1001 ${TEMPD}/flag
#sudo chown 1000:1001 ${TEMPD}/${1}
#sudo chmod 440 ${TEMPD}/flag
#sudo chmod 550 ${TEMPD}/${1}
#sudo chmod g+s ${TEMPD}/${1}
#
#echo ${TEMPD}
TIMEOUT=30
docker run --rm -it -u 1000:1000 ${1} timeout -s 9 ${TIMEOUT} bash
