UUID := Hide_Activities@shay.shayel.org
BUILD_DIR ?= build
BUNDLE_PATH := "$(BUILD_DIR)/$(UUID).shell-extension.zip"

.PHONY: release build package clean

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
