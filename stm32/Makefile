default: serve

TARGETDIR = _build

FILE = presentation.rst

DOTFILES = $(shell find -type f -regex ".*\.dot")
DOT2SVGS = $(DOTFILES:=.svg)


makedot: $(DOT2SVGS)

%.dot.svg : %.dot
	dot $< -Tsvg -O

local: makedot
	hovercraft $(FILE) $(TARGETDIR)

serve: makedot
	touch .serving
	(hovercraft $(FILE) -s ; rm .serving) &

serve_stop:
	killall hovercraft

.serving : serve
	sleep 1

view: .serving
	xdg-open http://localhost:8000

install:
	yay -S hovercraft-git
