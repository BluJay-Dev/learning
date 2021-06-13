#!/bin/bash
DATE="$(date +%Y-%m-%d)"
for JPG in *.jpg; do mv $JPG $DATE-$JPG; done 
exit 0 