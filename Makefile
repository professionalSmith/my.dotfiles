.ONESHELL:
.PHONY: all clean test
SHELL := /bin/sh

MAKEFILE_INCLUDES := $(sort $(wildcard ./makefiles/*.mk))
include $(MAKEFILE_INCLUDES)
