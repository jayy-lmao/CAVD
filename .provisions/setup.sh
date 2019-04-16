#!/usr/bin/env bash

if [ -f ../bootstrap.sh ]; then
    ../bootstrap.sh
else
    curl -sL https://raw.githubusercontent.com/jayy-lmao/CA-Ubuntu-Setup/master/bootstrap.sh | sudo -E bash -
fi
