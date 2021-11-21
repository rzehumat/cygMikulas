rocenka.pdf: rocenka.tex pdf/*
	pdflatex rocenka

pdf/*.pax: pdf/*.pdf
	# pax pdf

pdf/*.pdf: papers/**/*.tex papers/**/*.bbl papers/**/*.bcf papers/**/*.blg cygclanek.cls papers/**/img/*
	# pdflatex clanek
	# pdflatex clanek
	# mv clanek.pdf pdf/$name.pdf

papers/**/*.bbl papers/**/*.bcf papers/**/*.blg: papers/**/*.bib
	# biber clanek
