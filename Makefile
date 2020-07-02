all:
	for dir in *; do \
	  if [ $dir = "bird" ]; then \
	    continue; \
	  fi; \
	  if test -d $$dir; then \
	    $(MAKE) --directory=$$dir build; \
	  fi; \
	done
