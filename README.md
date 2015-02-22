## Tidying the Human Activity Recognition Using Smartphones Dataset

### Introduction
Data in the table `smartphone_tidy_data.txt` are tidied data from the Human Activity Recognition Using Smartphones Dataset Version 1.0.

The description of the study and the dataset are available at the following urls:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

Descriptions of the data in the tidied dataset are available in the accompanying `codebook.md`

The steps taken to tidy the data are coded and commented in the script `run_analysis.R`.

### Explanation of the tidying
After combining data from the subjects, activities, and measurements in both the *train* and *test* groups, the subset containing only mean and standard deviation measurements was selected.  Based on the original codebook, these measurements were the ones whose descriptions ended in either -mean() or -std(). Other measurements containing the word "mean" were ignored as these seemed to be derived quantities that used means rather than actual means.

Following the style advocated by Hadley Wickham, variable names and values are lower case and the parts of the lengthy variable names were separated by an underscore for readability.

The tidy data were reported in wide format, i.e, columns for the subject and activity variables followed by 66 columns of measurements.  By summarizing the 10,299 observation rows as means grouped by subject and activity the data were reduced to 180 rows each representing a single observation containing 66 measurements for each pair of the subject and activity variables.

The tidy data were written to the file `smartphone_tidy_data.txt` using write.table() with row.names = FALSE and quote = FALSE.  The file can be read using read.table() with header = FALSE.

### References
http://www.jstatsoft.org/v59/i10/paper   Hadley Wickham article on tidy data

http://adv-r.had.co.nz/Style.html  Hadley Wickham style guide



