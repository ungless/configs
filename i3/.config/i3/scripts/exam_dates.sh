#!/bin/bash

echo "Latin Language:" $(( ($(date +%s -ud '2018-05-14 00:00:00') - $(date +%s)) / 3600 / 24 )) "days to go"
echo "Latin Prose:" $(( ($(date +%s -ud '2018-05-17 00:00:00') - $(date +%s)) / 3600 / 24 )) "days to go"
echo "Latin Verse:" $(( ($(date +%s -ud '2018-05-21 00:00:00') - $(date +%s)) / 3600 / 24 )) "days to go"
echo "English:" $(( ($(date +%s -ud '2018-06-05 00:00:00') - $(date +%s)) / 3600 / 24 )) "days to go"
echo "French:" $(( ($(date +%s -ud '2018-05-15 00:00:00') - $(date +%s)) / 3600 / 24 )) "days to go"
echo "Dance:" $(( ($(date +%s -ud '2018-06-19 00:00:00') - $(date +%s)) / 3600 / 24 )) "days to go"
