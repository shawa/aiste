outfile := essay.pdf
infiles := $(shell ls chapters/*.md)

pandoc_flags:= --number-sections --toc -f markdown+smart --standalone \
			    --variable fontsize=12pt
bib_file := meta/biblio.bib
csl_file := meta/chicago-author-date.csl
meta_file := meta/metadata.yaml
footer_file := meta/footer.md
latex_engine := pdflatex
latex_template := meta/template.latex

all: chapters meta
	pandoc $(pandoc_flags)\
		--bibliography $(bib_file)\
		--csl $(csl_file)\
		--pdf-engine=$(latex_engine)\
		--template=$(latex_template)\
		-o $(outfile) \
		$(infiles) $(footer_file) $(meta_file)

clean:
	rm $(outfile)
