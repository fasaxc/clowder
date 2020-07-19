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
	git fetch --all
	for dir in *; do \
	  if test -d $$dir; then \
	    git merge --no-edit $$dir/master -Xsubtree=$$dir || exit 1; \
	  fi; \
	done

mod-tidy:
	# FIXME Should be run in the container.
	for dir in *; do ( cd $$dir && go mod tidy; ); done

static-checks:
	for dir in *; do \
	  if [ $dir = "bird" ]; then \
	    continue; \
	  fi; \
	  if test -d $$dir; then \
	    $(MAKE) --directory=$$dir static-checks; \
	  fi; \
	done
