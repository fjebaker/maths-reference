
TARGETS := test.svg



all: $(TARGETS)
	rm -f *.log *.tex *.mps *.mpx
	mv *.svg ../src/tex-images


%.svg: %.mp
	mpost $<

test:
	mpost test

.PHONY: clean all
clean:
	rm -f *.log *.tex *.mps *.mpx
	rm -f *.png *.svg