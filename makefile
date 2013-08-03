# makefile to convert between different formats
# use 'make update' to download new chapters
# use 'make all' to download new chapters and build all formats

# recursive rather than immediate expansion is used because
# the list of files must be up to date after new chapters are downloaded
DUMP_FILES = $(wildcard html-dump/*.htm)
MARKDOWN_TARGETS = $(DUMP_FILES:html-dump/%.htm=markdown/%.md)
LATEX_TARGETS = $(MARKDOWN_TARGETS:markdown/%.md=latex/%.tex)

.PHONY: update
# update downloads new chapters from hpmor.com
update:
	python script/hpmor-scrape.py
# html-dump is an alias for update
html-dump: update

.PHONY: markdown
# build all markdown files
markdown: $(MARKDOWN_TARGETS)

.PHONY: latex
# build all latex files
latex: $(LATEX_TARGETS)

latex/%.tex: markdown/%.md
	pandoc -o latex/$*.tex markdown/$*.md

markdown/%.md: html-dump/%.htm
	pandoc -o markdown/$*.md html-dump/$*.htm

.PHONY: all
# download chapters and re-build all formats
all: update markdown latex
