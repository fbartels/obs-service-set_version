prefix = /usr

servicedir = ${prefix}/lib/obs/service

all:

install:
	install -d $(DESTDIR)$(servicedir)
	install -m 0755 set_version $(DESTDIR)$(servicedir)
	install -m 0644 set_version.service $(DESTDIR)$(servicedir)

clean:
	find -name '*.pyc' -exec rm {} \;
	find -name '*.pyo' -exec rm {} \;

test:
	python -m unittest discover tests/

.PHONY: all install test
