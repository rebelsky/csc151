# Instructions for creating the notes (pseudo-outlines) on topics that
# are no longer covered.

notes: notes.spot-lists.md
notes.spot-lists.md: */spot-lists.md
	../tools/mdnotes spot-lists "Spot Lists" > $@
