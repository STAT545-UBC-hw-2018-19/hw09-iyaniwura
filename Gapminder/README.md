
This pipeline uses the `gapminder` data set and contains 4 files including the `Makefile`. Below is a brief description of the pipeline and the file it contains; 
	
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
	
	
	
