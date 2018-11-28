# Homework 09: Automating Data Analysis Pipelines

This repsoitory contains the files used in homework 9. In this homework, we learn create and maintain a pipeline in R. A pipeline was already seeded with the homework 9 repository created on Github. One of the tasks for this assignment is to add one R script and one Rmd script to the seeded pipeline. 



Below are the files I just added to the pipeline seeded in the homework reposiroty;

1. Analysis.R: This is an R script which contains the code that performs the following operations; 
	* reads in the `words.txt` data set and extracts the words starting with some specified alphabets (for example I specified a-i, but it can also be done for all the alphabets)
	* the length of each word in the extracted data is counted
	* a data frame with three colmns is created with this extracted data. The first column contains the first alpahabets of each word, the second column contains the words, while the third column contains the length of the words
	* the data frame created is written into a file  `df_words.csv`

<br>

2. Analysis_report.Rmd: This file performs the following operations;
	*  reads in the data frame `df_words.csv` from file
	* display the structure of the data frame
	*  then display the first 10 rows of the data frame
	* a boxplot showing the distribution of the length of words starting with different alphabets is then plotted using ggplot
	* FInal, this file shows the result of the analysis done in the pipeline seeded in the homework repository
	
Here is a link to this exercise [Words analysis](https://github.com/STAT545-UBC-students/hw09-iyaniwura/tree/master/Words)
	
	
In addition to modifying the seeded pipeline, I also created a new pipeline. This pipeline uses the `gapminder` data set and contains 4 files including the `Makefile`. Below is a brief description of the pipeline and the file it contains; 
	
<br>
	
1. Makefile: the makefile contains the command required to run the pipeline. Below are the targets and dependencies;

----------------------------------------------------
Targets                       | dependencies | 
----------------------------|-----|
**all**            | GapAnalysis.html  GapTimeSeries.html |
**clean**         |   gap_extract.csv  GapAnalysis.html Nig_data.csv GapTimeSeries.html *.md|
**GapAnalysis.html**        |GapAnalysis.Rmd gap_extract.csv  |
**Nig_data.csv**      |  GapAnalysis.Rmd|
**GapTimeSeries.html** |  GapTimeSeries.Rmd Nig_data.csv  |
**gap_extract.csv**          | GapData_Extract.R |



Here is a link to this exercise [Gapminder analysis](https://github.com/STAT545-UBC-students/hw09-iyaniwura/tree/master/Gapminder)
	
	


<br>

2. GapData_Extract.R: This file depends on the `gapminder` data set and performs the following functions; 
	* read in the `gapminder`   data set and  extract the data for a specified country. In this exercise, the specified country i s Nigeria
	* write  the extracted data into  a file named `gap_extract.csv` 
	
<br>

3. GapAnalysis.Rmd: This file depends on `gap_extract.csv` 
	* read the `gap_extract.csv` data  from file
	* displays the structure and first few lines of the data
	* present a scatter plot of `gdpPercap` vs `LifeExp`  
	* present a scatter plot of `g`pop` vs `LifeExp`
	* Lastly, the columns `year`,`gdpPercap`,`pop`, and `lifeExp` were extracted from the   `gap_extract.csv` data and  written  into 			another file named `Nig_data.csv`.

<br>

4. GapTimeSeries.Rmd: This file depends on `Nig_data.csv` data
	* reads in the `Nig_data.csv` data 
	* presents the time series plots of  `pop` (population), `gdpPercap`, and `lifeExp`  from 1952 to 2017
	
	
	
	
<br>
	
Acknowledgement:

The original pipeline was created by [Jenny Bryan](https://github.com/jennybc?tab=overview&from=2014-03-01&to=2014-03-31). 
