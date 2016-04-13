# Project: Movies
### Data folder

The data directory contains data used in the analysis. This is treated as read only; in paricular the R/python files are never allowed to write to the files in here. Depending on the project, these might be csv files, a database, and the directory itself may have subdirectories.

- movie.Rdata is the cleaned data set, while data_new.Rdata is the data where all the analysis is based on.  
- Expert folder: data for the 500 experts and 500 deviated users are saved here. This folder also contains the node matrix and link matrix that will be called for network bulding.  
- Recommendation Data: this folder contains the train data set, test data set, as well as necessary data sets for clustering and chi-square algorithm.