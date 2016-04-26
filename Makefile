# Makefile for Sphinx documentation
#

ghpages:
	git checkout gh-pages
	cp -a $(BUILDDIR)/html/* ../
	git add -A ../
	git commit -a -m "Updating gh-pages on `date`"
	git push origin gh-pages
	@echo "Published to gh-pages."
	git checkout $(CURRENT_BRANCH)

