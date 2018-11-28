all: GapAnalysis.html GapTimeSeries.html


clean: 
	rm -f gap_extract.csv  GapAnalysis.html Nig_data.csv GapTimeSeries.html *.md

GapAnalysis.html: GapAnalysis.Rmd gap_extract.csv
	Rscript -e 'rmarkdown::render("$<")'

Nig_data.csv: GapAnalysis.Rmd gap_extract.csv
	Rscript -e 'rmarkdown::render("$<")'
	
GapTimeSeries.html: GapTimeSeries.Rmd Nig_data.csv
	Rscript -e 'rmarkdown::render("$<")'


gap_extract.csv: GapData_Extract.R
	Rscript $<