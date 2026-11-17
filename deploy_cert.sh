#!/bin/bash

# change domain
domain="example.com"

# [old] default acmesh hook
# open https://github.com/acmesh-official/acme.sh/wiki/deployhooks#26-deploy-the-cert-on-openmediavault-omv
acme.sh --deploy -d "${domain}" --deploy-hook openmediavault

# [new] custom hook
#acme.sh --deploy -d "${domain}" --deploy-hook cert_hook
