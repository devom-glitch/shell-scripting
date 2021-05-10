#!/bin/sh

awk 'BEGIN{FS="|"}{if($1 ~ /^([0-9]{3})/)}'