all: hiw.pdf

hiw.pdf: hiw.md
	pandoc -i -t beamer hiw.md -o hiw.pdf

.PHONY: watch
watch:
	fd -e md | entr make

