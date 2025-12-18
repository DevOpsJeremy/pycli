define HEADER
	@printf "\n-----\n%s\n-----\n\n" "$@"
endef

build:
	$(HEADER)
	pip install build
	python -m build

install:
	$(HEADER)
	pip install .

test:
	$(HEADER)
	pip install pytest .
	pytest

lint:
	$(HEADER)
	pip install ruff
	ruff check
	ruff format --check

format:
	$(HEADER)
	pip install ruff
	ruff format

clean:
	$(HEADER)
	rm -rf dist

all: clean install test lint

publish: all
	
