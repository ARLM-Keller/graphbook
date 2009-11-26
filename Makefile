# Copyright (C) 2008 Minh Van Nguyen <nguyenminh2@gmail.com>
#
# Make sure that the following commands are in your PATH variable:
# latex, dvips, ps2pdf, rm

# change "template" to the name of your master .tex file
FILE = book

all:
	make latex
#	bibtex $(FILE)
#	make latex

latex:
	latex $(FILE).tex
	latex $(FILE).tex
#	latex $(FILE).tex

pdf:
	make all
	dvips -t a4 -o $(FILE).ps $(FILE).dvi
	ps2pdf $(FILE).ps

clean:
	rm -rfv *#
	rm -rfv *~
	rm -rfv *.aux
	rm -rfv *.bak
	rm -rfv *.bbl
	rm -rfv *.blg
#	rm -rfv *.dvi
	rm -rfv *.lof
	rm -rfv *.log
	rm -rfv *.lot
	rm -rfv *.ps
	rm -rfv *.toc
