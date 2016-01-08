include ../resources/section.mk

MKSCHEDULE=../tools/mkschedule

schedule.html: overviews/*.xml
overviews/%.xml: ../outlines/overviews/%.md
	../tools/overview2xml $^ > $@

schedule.sect: $(MKSCHEDULE) Makefile
	$(MKSCHEDULE) mtwf-fall-review > $@

# Hacks for generating a decent PDF of the schedule
sched.sect: $(MKSCHEDULE)
	$(MKSCHEDULE) mtwf-fall-alt > $@
sched-munge.html: sched.html
	../tools/munge-schedule $< > $@
schedule.ps: sched-munge.html schedule.h2p
	html2ps -D -f schedule.h2p -o $@ $<

