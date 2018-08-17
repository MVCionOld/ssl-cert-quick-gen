#!/bin/bash

echo Installing OpenSSL, please enter password.
sudo apt-get install openssl
echo Generating private key...
openssl genrsa -out webhook_pkey.pem 2048
echo
echo Generating SSL certificate
echo Eveything is optional except field "Common Name", enter ip address there
echo
openssl req -new -x509 -days 3650 -key webhook_pkey.pem -out webhook_cert.pem

