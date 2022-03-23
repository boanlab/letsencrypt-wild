#!/bin/bash

if [ -z $1 ]; then
    echo "Usage: $0 [domain name]"
    exit
fi

./acme.sh --issue --dns --force -d $1 -d *.$1 --yes-I-know-dns-manual-mode-enough-go-ahead-please
