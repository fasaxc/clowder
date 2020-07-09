all:
	for dir in *; do \
	  if [ $dir = "bird" ]; then \
	    continue; \
	  fi; \
	  if test -d $$dir; then \
	    $(MAKE) --directory=$$dir build; \
	  fi; \
	done

static-checks:
	for dir in *; do \
	  if [ $dir = "bird" ]; then \
	    continue; \
	  fi; \
	  if test -d $$dir; then \
	    $(MAKE) --directory=$$dir static-checks; \
	  fi; \
	done
