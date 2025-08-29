all:
	quarto render rvdc.qmd

publish:
	cp rvdc.html docs/index.html
	rm -fr docs/rvcd_files
	cp -rp rvdc_files docs
	git add docs
	git commit -m 'update' -a
	git push
