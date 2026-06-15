OUTFILE := ./main.pdf

GIT_HASH := $(shell git rev-parse --short HEAD 2>/dev/null || echo "未知git哈希")

all: $(OUTFILE)

$(OUTFILE): ./main.typ
	typst compile ./main.typ $(OUTFILE) \
		--font-path ./fonts \
		--input git-hash=$(GIT_HASH)

clean:
	rm -f $(OUTFILE)

.PHONY: all clean
