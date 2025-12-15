OUTDIR := ./out
SRCS := $(wildcard *.tex)

all:
	mkdir -p $(OUTDIR)
	lualatex -synctex=1 -recorder -halt-on-error -file-line-error -output-directory=$(OUTDIR) ./main.tex
	lualatex -synctex=1 -recorder -halt-on-error -file-line-error -output-directory=$(OUTDIR) ./main.tex

clean:
	rm -rf $(OUTDIR)
