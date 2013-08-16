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
	for dir in $(SECTIONS); do cd $$dir; make; cd ..; done

clean:
	for dir in $(DIRTY); do cd $$dir; make clean; cd ..; done

# +----------------+--------------------------------------------------
# | Special Targets|
# +----------------+

.PHONY: pdf
pdf:
	for dir in $(SECTIONS); do cd $$dir; make pdf; cd ..; done

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
