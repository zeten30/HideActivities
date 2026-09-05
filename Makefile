.PHONY: release

release:
	gnome-extensions pack --force \
	  --extra-source=LICENSE
