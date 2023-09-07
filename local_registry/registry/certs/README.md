# CERTIFICATES

## Linux
openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 -nodes -keyout server.key -out server.crt -subj "/CN=localhost" -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"


## MacOS
openssl req -config server.conf -new -sha256 -newkey rsa:2048 -nodes -keyout server.key -x509 -days 365 -out server.crt

## Build
You can use the Makefile platform to build the service. Make sure the required packages are installed on your dev platform.
I only have tested on Mac-OS with ARM CPU.
