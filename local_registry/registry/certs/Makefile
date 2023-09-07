# Makefile to build certificates (tested macos)

RMCMD=rm -rf
CERTCMD=/usr/bin/openssl

build:
	${CERTCMD} req -config domain.conf -new -sha256 -newkey rsa:2048 -nodes -keyout domain.key -x509 -days 365 -out domain.crt

clean:
	${RMCMD} *.crt
	${RMCMD} *.key

build_cert:build
all: clean build
