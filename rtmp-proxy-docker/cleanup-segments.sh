#!/bin/bash

find /tmp/hls/ispooge.com/ispoogedaily -name *.ts -not -newermt '-60 seconds' -delete
