Manifest for SamR's Courses
===========================

Individual branches may differ somewhat.  These are the primary files
and directories.

Files
-----

`COPYRIGHT.md` -
  A short copyright notice, giving Creative Commons license to the work.

`MANIFEST.md` -
  This file.  A list of the primary files in the system.

`README.md` -
  Everyone's favorite starting point.

`index.html` -
  In the end, this repo is for building Web sites.  The home page is
  stored in the home directory; this page redirects to there.

`Makefile` -
  Basic instructions for building the site.  Currently supports just the
  default and clean targets.

The resources directory
-----------------------

### XML Entities

`resources/common.ent` -
  Common entities, used by all sites.

`resources/course.ent` -
  Course-related entitities (e.g., the course name and number).

`resources/custom.ent` -
  Custom entities for each course.

`resources/prof.ent` -
  Information about the professor

### XML Style Sheets

`resources/common.xsl` -
  The common style sheet.  (I don't know why I decided to call this common.)

`resources/links.xsl` -
  HTML for the links that appear at the top and bottom of each page, at 
  least in the current style.

`resources/stylesheet.xsl` -
  The primary style sheet used to convert XML to HTML.

### Programs

`resources/sect2docbook` -
  A tool that wraps a .sect file to produce a docbook that includes
  the appropriate entities.

`resources/wrap-md-html` -
  A tool that takes a formatted Markdown file (traditionally, really
  simple HTML) and wraps it into a page that looks like the formatted
  .sect files.

### Miscellaneous

`resources/Makefile` -
  A simple Makefile.

`resources/section.mk` -
  A shared Makefile for the various document directories.

`resources/stylesheet.css` -
  The stylesheet used by all of the pages.

Standard Sections
-----------------
These are the standard collections of documents for the course web.

`assignments` - 
  Assignments, typically homework assignments.

`handouts` - 
  Standard handouts - schedule of courses, etc.

`home` - 
  The starting point.  Contains the front door.

`labs` - 
  Laboratories, if we have them.

`misc` - 
  Things that don't fit anywhere else. Rarely used.

`outlines` - 
  Daily outlines.

`readings` - 
  Daily readings, for courses in which I write readings.

Additional Sections
-------------------
These sections tend to get filled in as the semester progresses.

`eboards` -
  My daily notes.  I may try to work on making these in markdown
  format.

`examples` -
  Examples generated during the semester (or prepared in advance).

`sandbox` -
  A place to play with things, mostly to try new approaches and to
  get things working.
