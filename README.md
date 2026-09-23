# Hide Activities Button

A simple GNOME Shell extension to hide the Activities button from the status bar.

## Installation instructions

- [GNOME extensions web](https://extensions.gnome.org/extension/744/hide-activities-button/)
- [Extension Manager](https://flathub.org/apps/com.mattjakeman.ExtensionManager)
- [Extensions App](https://flathub.org/apps/org.gnome.Extensions)

## Development instructions

- Run `make build` to build the extension bundle
  - The build directory can be changed by setting the `BUILD_DIR` environment variable
- Run `make check` to build and run the bundle through Shexli
  - This will set up a venv, defaulting to `./venv`
  - The venv's path can be changed by setting the `VENV` environment variable
- Run `make clean` to clean the project
  - If a non-default venv or build directory had been used at a previous step, it must be manually specified here too
- Run `make install` to build and install the extension bundle
