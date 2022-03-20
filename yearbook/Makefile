# set variable $PAX = .../pax.jar

rocenka.pdf: rocenka.tex pdf/* figures/*
	pdflatex rocenka

pdf/*.pax: pdf/*.pdf
	# for $filename.pax in pdf/*
	#   $filename.pax: $filename.pdf
	#   	$PAX $filename.pdf

pdf/*.pdf: papers/**/*.tex papers/**/*.bbl papers/**/*.bcf papers/**/*.blg cygclanek.cls papers/**/img/*
	# for $folder in papers
	# 	papers/$folder/$folder.pdf: papers/$folder/vsechny ty bcf hovna
	# 		# pdflatex clanek
	# 		# pdflatex clanek
	# 		# mv clanek.pdf pdf/$folder.pdf

papers/**/*.bbl papers/**/*.bcf papers/**/*.blg: papers/**/*.bib
	# biber clanek
