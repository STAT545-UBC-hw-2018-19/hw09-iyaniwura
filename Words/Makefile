all: report.html Analysis_report.html

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html df_words.csv Analysis_report.html Analysis_report.md

report.html: report.rmd histogram.tsv histogram.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<

# the codes I just added
df_words.csv: Analysis.R words.txt
	Rscript $<
	
Analysis_report.html: Analysis_report.Rmd df_words.csv histogram.png
	Rscript -e 'rmarkdown::render("$<")'


words.txt: /usr/share/dict/words
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
