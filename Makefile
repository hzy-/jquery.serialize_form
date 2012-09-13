.PHONY: all clean

TARGETS = jquery.serialize_form.min.js jquery.serialize_form.js

all: $(TARGETS)

clean:
	rm -f $(TARGETS)

%.min.js: %.js
	uglifyjs $< > $@

%.js: %.coffee
	coffee -c $<