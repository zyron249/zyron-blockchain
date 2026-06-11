#!/usr/bin/make -f

all: build

build:
	go build -o build/zyrond ./cmd/zyrond

install:
	go install ./cmd/zyrond

init:
	./scripts/init.sh

start:
	./scripts/start.sh