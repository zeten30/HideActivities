UUID := Hide_Activities@shay.shayel.org
BUILD_DIR ?= build
BUNDLE_PATH := "$(BUILD_DIR)/$(UUID).shell-extension.zip"
VENV := venv
SYSTEM_PYTHON := $(or $(shell which python3), $(shell which python))

.PHONY: release build package clean check

release: build

build: clean
	@mkdir -p $(BUILD_DIR)
	$(MAKE) package
	$(MAKE) check

package:
	@gnome-extensions pack --force \
	  --extra-source=LICENSE \
	  -o ./$(BUILD_DIR)/

clean:
	@rm -rfv $(BUILD_DIR)
	@rm -rfv $(VENV)

# Check for issues using 'shexli' on the bundle (recommended by gnome-extensions)
check:
	$(SYSTEM_PYTHON) -m venv $(VENV)
	$(VENV)/bin/pip install -U shexli
	$(VENV)/bin/shexli $(BUNDLE_PATH)
