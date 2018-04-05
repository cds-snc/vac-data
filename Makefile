SHELL ?= /usr/bin/bash
VIRTUALENV_ROOT := $(shell [ -z $$VIRTUAL_ENV ] && echo $$(pwd)/.env || echo $$VIRTUAL_ENV)

.PHONY: virtualenv
virtualenv:
	[ -z $$VIRTUAL_ENV ] && [ ! -d .env ] && python3 -m venv .env || true

.PHONY: setup_python
setup_python:  virtualenv requirements.txt
	${VIRTUALENV_ROOT}/bin/pip install -q -r requirements.txt
SHELL ?= /usr/bin/bash

.PHONY: setup_python

