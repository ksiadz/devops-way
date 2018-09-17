SHELL=/bin/bash
SRC=$(shell pwd)
PIP=pip3
PYTHON=python
PYTEST=pytest
export PYTHONPATH:=$(SRC)


install:
	${PIP} install --upgrade pip 
	${PIP} install --upgrade setuptools 
	${PIP} install --upgrade -r requirements.txt

install-dev:
	${PIP} install --upgrade -r requirements-dev.txt

run-tests: install-dev
	$(PYTEST) test.py

run-app: install
	$(PYTHON) app.py 

docker-image-build:
	docker build -t hello-world .
