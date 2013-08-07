HPMOR
=======
Harry Potter and the Methods of Rationality
---------------------------------------------
This repository is a mirror of Eliezer Yudkowsky's Harry Potter fanfic, Harry Potter and the Methods of Rationality. It includes scripts and a makefile to download chapters from hpmor.com and convert them to a number of formats.

For the sake of simplicity, author notes before and after chapters have been removed.

Formats
---------
Each format has its own sub-directory. Raw extracted chapters reside in *html-dump*. These are then converted to *markdown*, which is the intermediate format form which all others are built. These include an *html* web page and *latex* generated *pdf*s.

PDFs
----------
PDFs can be built with a number of styles and page sizes. The *hpotter* style is designed to resemble the American editions of Harry Potter books. The *classic* style is a more traditional, no-frills format. The 6x9 inch *trade* paper size is used with easy printing from lulu.com in mind.

Requirements
--------------
*	Python 2.7
	*	BeautifulSoup
	*	Requests
*	Pandoc
*	xelatex
	*	xelatex comes standard with most LaTeX distributions, including MiKTeX and
	TeX Live
* GNU Make
	*	make comes standard on Unix based systems. Windows users should install
	MinGW or Cygwin

Building
------------
A makefile is included for building all formats. Useful build target include:

Check for and downloads new chapters.

    make update

Download new chapters and builds all formats.

    make all

Build pdf versions with LaTeX.

    make pdf

Convert raw html chapters to markdown.

    make markdown

A number of other targets are available, such as building individual pdfs and short pdfs to test the layout. For a complete list of build targets, see the makefile.

Contributing
--------------
There is still much formatting work to be done, and pull requests are welcome. The markdown and LaTeX sources have a number of formatting errors which are badly in need of correction. Other ways to help include tweaking the LaTeX styles and creating build targets for PDFs with different paper sizes and styles.
