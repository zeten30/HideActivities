UUID := Hide_Activities@shay.shayel.org
BUILD_DIR ?= build
BUNDLE_PATH := "$(BUILD_DIR)/$(UUID).shell-extension.zip"
VENV ?= venv
SYSTEM_PYTHON := $(or $(shell which python3), $(shell which python))

.PHONY: release build package clean check

release: build

build: clean
	@mkdir -p $(BUILD_DIR)
	$(MAKE) package

package:
	@gnome-extensions pack --force \
	  --extra-source=LICENSE \
	  -o ./$(BUILD_DIR)/

clean:
	@rm -rfv $(BUILD_DIR)
	@rm -rfv $(VENV)

# Build & check for issues using 'shexli' (recommended by gnome-extensions)
# for local test & development
check:
	$(MAKE) build
	$(SYSTEM_PYTHON) -m venv $(VENV)
	$(VENV)/bin/pip install -U shexli
	$(VENV)/bin/shexli $(BUNDLE_PATH)
