#!/bin/bash

# change domain
domain="example.com"
wwwroot="/var/www/openmediavault"

acme.sh --issue -d "${domain}" -w "${wwwroot}"
