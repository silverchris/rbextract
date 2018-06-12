TARGET = rbextract

$(TARGET): rbextract.o lib.a
	gcc $^ -o $@

rbextract.o: rbextract.c
	gcc -c $< -o $@

lib.a: rle.o minilzo.o
	ar rcs $@ $^

rle.o: rle.c rle.h
	gcc -c -o $@ $<
	
minilzo.o: minilzo.c minilzo.h
	gcc -c -o $@ $<
