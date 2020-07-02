all:
	for dir in *; do if test -d $$dir; then make --directory=$$dir build; fi; done
