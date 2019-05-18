#!/bin/sh
#Answer 1
cat sample2-candidate-data.csv| awk -F, '{print $6}'| awk -F. '{print $1}'| sort >hostnames

#Answer 2
cat sample2-candidate-data.csv| awk -F, '{ if ($3 == "PX") print $6}' >list_PX
cat sample2-candidate-data.csv| awk -F, '{ if ($3 == "TT") print $6}' >list_TT