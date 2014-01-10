# Instructions for creating the notes (pseudo-outlines) on topics that
# are no longer covered.

notes: spot-lists.md
spot-lists.md: */spot-lists.md
	../tools/mdnotes spot-lists "Spot Lists" > $@
