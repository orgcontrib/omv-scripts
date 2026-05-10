#!/bin/bash

# open https://github.com/acmesh-official/acme.sh/wiki/How-to-install#4-advanced-installation

__prefix='/usr/local'
__repo='https://github.com/acmesh-official/acme.sh.git'

_home="${__prefix}/sbin"
_config_home="${__prefix}/etc/acme.sh"
_cert_home="${__prefix}/etc/acme.sh/live"
# Your registered ZS/LE account email
_accountemail="you@example.com"
_accountkey=""
_accountconf=""
_useragent="$(hostname)"

git clone --depth 1 "${__repo}"
cd acme.sh
./acme.sh --install \
--home "${_home}" \
--config-home "${_config_home}" \
--cert-home "${_cert_home}" \
--accountemail "${_accountemail}" \
--accountkey "${_accountkey}" \
--accountconf "${_accountconf}" \
--useragent "${_useragent}" \
--nocron

exit 0