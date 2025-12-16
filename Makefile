build:
	pip install build
	python -m build

install:
	pip install .

test:
	pip install pytest .
	pytest

lint:
	pip install ruff
	ruff check
	ruff format --check

format:
	pip install ruff
	ruff format

clean:
	rm -rf dist
