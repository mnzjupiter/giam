all: GIAM.pdf GIAM-hw.pdf GIAM-solutions_manual.pdf

GIAM.pdf: GIAM.aux
	pdflatex GIAM
GIAM.aux: *.tex */*.tex
	pdflatex GIAM
GIAM-hw.pdf: GIAM-hw.aux
	pdflatex GIAM-hw
GIAM-hw.aux: *.tex */*.tex
	pdflatex GIAM-hw
GIAM-solutions_manual.pdf: GIAM-solutions_manual.aux
	pdflatex GIAM-solutions_manual
GIAM-solutions_manual.aux: *.tex */*.tex
	pdflatex GIAM-solutions_manual
clean::
	rm *.aux *~ *.bak */*.aux */*~ */*.bak
