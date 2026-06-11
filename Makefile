#!/usr/bin/make

all: build

build:
	go build -o build/zyrond ./cmd/zyrond

install:
	go install ./cmd/zyrond

init:
	./scripts/init.sh

start:
	./scripts/start.sh

testnet:
	ignite chain serve -c config.yml --reset-once
