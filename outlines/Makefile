MAKEOUTLINE = ../tools/mdoutline

include ../resources/section.mk

outline.%.md: $(MAKEOUTLINE) ../resources/subjects.ent
	$(MAKEOUTLINE) $* > $@

outlines.mk: ../resources/subjects.ent
	../tools/mk-outlines-mk

include outlines.mk
