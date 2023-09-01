# Makefile to build certificates (tested macos)

CERTCMD=/usr/bin/openssl
RMCMD=rm -rf

build:
	${CERTCMD} req -config server.conf -new -sha256 -newkey rsa:2048 -nodes -keyout domain.key -x509 -days 365 -out domain.crt

clean:
	${RMCMD} *.crt
	${RMCMD} *.key

build_cert:build
all: clean build
