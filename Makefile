# Makefile for plan
#

BUILDDIR=report
CURRENT_BRANCH=master

ghpages:
	git checkout gh-pages
	cp -a $(BUILDDIR)/* .
	git add -A .
	git commit -a -m "Updating gh-pages on `date`"
	git push origin gh-pages
	@echo "Published to gh-pages."
	git checkout $(CURRENT_BRANCH)

