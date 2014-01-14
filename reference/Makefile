include ../resources/section.mk

link:
	../tools/link-files ../mediascheme/reference

# +---------------------------------------+---------------------------
# | Rules to generate one-page references |
# +---------------------------------------+

%.sect: %.short
	../tools/short2sect $< > $@

short := $(shell ls *.short 2>/dev/null);
short-sect := $(short:%.short=%.sect)
short-html := $(short:%.short=%.sect)

foo: $(short-html)
html: $(short-html)
