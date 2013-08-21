# section.mk
#   Instructions for building documents.
#
#   This Makefile is intended for use with my various document directories.
#   It provides the instructions for translating docbook-styled .sect files
#   to other forms as well as Markdown files to similar pages.
#
#   At some point, I'll document what files are expected.

# +------------------+------------------------------------------------
# | Standard Targets |
# +------------------+

default: html

clean: 
	rm -rf common.xsl stylesheet.xsl \
                *.docbook *.html *.ps *.pdf \
                *.list \
                outline.*


# +-----------------------+-------------------------------------------
# | Converting file types |
# +-----------------------+

%.ps: %.html
	html2ps -D -o $*.ps $<

%.pdf: %.ps
	ps2pdf $<  $*.pdf

%.docbook: %.sect ../resources/sect2docbook
	../resources/sect2docbook $* > $*.docbook

%.html: %.docbook *.ent ../resources/* common.xsl stylesheet.xsl
	xsltproc -o $*.html \
		--xinclude \
		--stringparam html.stylesheet "../resources/stylesheet.css" \
		--stringparam process.empty.source.toc "1" \
		--stringparam toc.section.depth "3" \
		common.xsl $<

%-md.html: %.md
	Markdown.pl $< > $@

%.html: %-md.html template.html
	../resources/wrap-md-html $^ > $@

%.list: %.bullets
	../resources/bullets2list $< > $@

%.text: %.bullets
	../resources/bullets2text $< > $@


# +---------------+---------------------------------------------------
# | Sets of files |
# +---------------+

sect := $(shell ls *.sect 2>/dev/null) 	# Lists all files matching *.sect,
                                        # sending error messages to /dev/null
sect-html := $(sect:%.sect=%.html)      # Converts .sect to .html
sect-pdf:= $(sect:%.sect=%.pdf)         # Converts .sect to .pdf
sect-docbook := $(sect:%.sect=%.docbook)

md := $(shell ls *.md 2>/dev/null)      # Lists all files matching *.md
                                        # sending error messages to /dev/null
md-html := $(md:%.md=%.html)            # Converts .md to .html
md-pdf := $(md:%.md=%.pdf)              # Converts .md to .pdf

html: $(sect-html) $(md-html)           # Builds all valid .html targets
pdf: html $(sect-pdf) $(md-pdf)         # Builds all valid .pdf targets


# +---------------------+---------------------------------------------
# | Specialized Targets |
# +---------------------+

# The current design of the system requires that we have copies of some
# xsl files in the current directory.  These rules create soft links
# to those xsl files to save space and so that updates propagate quickly.
common.xsl: ../resources/common.xsl
	ln -s $^ $@
stylesheet.xsl: ../resources/stylesheet.xsl
	ln -s $^ $@

