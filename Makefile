SVG = philosophers-princes-bride.svg
PNG = $(SVG).png
WIDTH = 400

all: $(PNG)

$(PNG): $(SVG)
	inkscape --export-png=$@ --export-width=400 $<
	optipng -o7 $@

upload: all
	rsync --progress -v -a --inplace human-hacking-field-guide-logo.svg hhfg-ad.svg hhfg-ad.svg.png $(__HOMEPAGE_REMOTE_PATH)/hhfg-graphics-demo/
