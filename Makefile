SVG = philosophers-princess-bride.svg
PNG = $(SVG).png
JPEG = $(SVG).jpg
WEBP = $(SVG).webp

WIDTH = 400

all: $(PNG) $(JPEG) $(WEBP)

$(PNG): $(SVG)
	inkscape --export-png=$@ --export-width=400 $<
	optipng $@

$(JPEG): $(PNG)
	gm convert $< $@

$(WEBP): $(PNG)
	gm convert $< $@
