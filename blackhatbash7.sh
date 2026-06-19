#!/bin/bash

touch example_file1 example_file2 example_file3

#------------------------------------
grep "35.237.4.214" log.txt
#------------------------------------
 grep "35.237.4.214\|13.66.139.0" log.txt
#------------------------------------
grep -e "35.237.4.214" -e "13.66.139.0" log.txt
#------------------------------------
ps | grep TTY
#------------------------------------
ps | grep tty
#------------------------------------
ps | grep -i tty
#------------------------------------
grep -v "35.237.4.214" log.txt
#------------------------------------
grep -o "35.237.4.214" log.txt
#------------------------------------
awk '{print $1}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$NF}' log.txtawk '{print $1,$2,$3}' log.txt
#------------------------------------
touch test.csv
echo -e "holaa1,chaoo1\nholaaa2,chaoo2\nholaa3,chaooo3" > test.csv
cat test.csv
#------------------------------------
head log.txt
#------------------------------------
# Filters the log file to show ONLY lines matching the specific IP address.
grep "42.236.10.117" log.txt
# Extracts and prints only the 7th space-separated column (the requested URL path) from every single line.
awk '{print $7}' log.txt
# Pipelines the filtered IP logs into awk to extract only the URLs requested by that specific IP.
grep "42.236.10.117" log.txt | awk '{print $7}'
