all:
	for dir in *; do \
	  if [ $dir = "bird" ]; then \
	    continue; \
	  fi; \
	  if test -d $$dir; then \
	    $(MAKE) --directory=$$dir build; \
	  fi; \
	done

pull-all:
	for dir in *; do \
	  if test -d $$dir; then \
	    git fetch $$dir && \
	    git merge --no-edit $$dir/master -Xsubtree=$$dir || exit 1; \
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
