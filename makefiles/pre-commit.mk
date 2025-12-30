.PHONY: all clean test


pc-install:
	pre-commit install

pc-run-all:
	pre-commit run --all-files

pc-run:
	pre-commit run

pc-update:
	pre-commit autoupdate
