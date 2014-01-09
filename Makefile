# rebelsky/[course]/Makefile
#   Instructions for building Course Web sites using SamR's hybrid
#   of Markdown and DocBook.

# +-----------------+-------------------------------------------------
# | Groups of Files |
# +-----------------+

# A list of the primary sections (subdirectories that should be processed)
SECTIONS = assignments \
        eboards \
	handouts \
	home \
	labs \
	misc \
	outlines \
	readings

# A list of all the directories that may need cleaning
DIRTY = $(SECTIONS) \
	resources \
	sandbox

# +-----------------+-------------------------------------------------
# | Standard Targets|
# +-----------------+

default: 
	cd resources; make
	for dir in $(SECTIONS); do cd $$dir; make; cd ..; done

clean:
	for dir in $(DIRTY); do cd $$dir; make clean; cd ..; done

# +----------------+--------------------------------------------------
# | Special Targets|
# +----------------+

.PHONY: pdf
pdf:
	for dir in $(SECTIONS); do cd $$dir; make pdf; cd ..; done

# Touch files to prevent rebuilding (usually done after we update
# resources/subjects.var).
touch:
	for dir in $(SECTIONS); do \
	  cd $$dir; \
	  touch *.html; \
	  touch *.pdf; \
	  cd ..; \
	done
	sleep 1
	touch outlines/outline.*.md
	sleep 1
	touch handouts/schedule.sect
	touch */index.sect
	touch outlines/outline.*.html
	touch outlines/outline.*.pdf
	touch eboards/[0-9][0-9].html
	touch eboards/[0-9][0-9].pdf


# +--------------+----------------------------------------------------
# | Fun with git |
# +--------------+

# Get the status of files without worrying about the typical locally
# generated files.
status:
	git status \
	| grep -v 'html$$' \
	| grep -v 'docbook$$' \
	| grep -v 'ps$$' \
	| grep -v 'pdf$$'

# Update the repository.  (Yeah, I still think in terms of Subversion)
update:
	git pull 

# Create a branch for the generic courses repository (somewhat upstream)
.PHONY: generic
generic:
	@if [ ! `git remote | grep '^generic$$'` ]; then \
	  git remote add generic https://github.com/rebelsky/generic-course; \
	fi

# Pull from the generic course
pull-generic: generic
	git pull generic master

pull-generic-old: generic
	git fetch generic master
	git merge generic /master

