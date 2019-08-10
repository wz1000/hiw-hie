all: hiw.pdf

hiw.pdf: hiw.md
	pandoc -t beamer hiw.md -o hiw.pdf

.PHONY: watch
watch:
	fd -e md | entr make

