#!/bin/bash
for i in $(cat ../street-quality-identification-device-syr-subjects.csv)
do
 url=`echo $i | awk -F, '{print $6}' | awk -F\" '{print $8}'`
 fname=`echo $i | awk -F, '{print $5}' | awk -F\" '{print $8}'`
 echo $url,$fname
 wget "${url}" -O "${fname}"
done
