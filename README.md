# Coding_for_economists_assignment
Take 1 or 2 datasets and demonstrate your skills in manipulating and analyzing it. The topic of the project and the correctness of the analysis is not evaluated, only the coding skills you have learned.  Pick a sample dataset (or here), or bring your own. You can use a project or term paper for another course to satisfy this assignment.  Feel free to consult class notes, Google, StackOverflow, each other, but type each line of code you write on your own. No copy-pasting, please.

## Instructions:
First I uploaded one xls file to data/raw
Then, I wrote a python script (Code\Cleaning data for STATA.ipynb) that cleans data. The output of the script is Data\Derived\python_cleaned_data.csv
After that, I use the output of Python script with STATA. Code\main_validation.do is enough to replicate the work.
Code\1_install_packages.do installs packages
Code\2_import_clean_data.do imports data and cleans it
Code\3_transform_data.do generate new variables and saves data to Data\Derived\prices_all_clean.dta
Code\4_histogram_frequency.do creates few graphs and saves them to Graphs\
Code\5_analysis.do make regressions and saves the results in Tables\

## Overview of tasks:
	Task
1	Understand folder structure. Perform operations on files in different folders.	
        Created folders: Data/Raw, Data/Derived, Code, Graphs, Tables
2	Automate repeating tasks using Python “for” loops.	
        Used 2 loops (for replacing NANs and for splitting dates)
3	Break up work into smaller components using Python functions.
        Used two functions
4	Use Python “lists” and “dictionaries” appropriately. Demonstrate one of the two.
        Used dictionary to create a Season column
5	Automate repeating tasks using Stata “for” loops.
        Used for loop to create graphs for each year
6	Break up work into smaller components using Stata .do files.
        Used 5 do files (and 1 main)
7	Read .csv data in in Stata.
        Yes
8	Fix common data quality errors in Stata (for example, string vs number, missing value).
        Changed some variables from string to bools (created dummy variables)
9	Aggregate, reshape, and combine data for analysis in Python or Stata. Demonstrate at least one of these data manipulations.
        Aggregated data by countries to created graphs
10	Prepare a sample for analysis by filtering observations and variables and creating transformations of variables. Demonstrate all three.
        Filtered variables (dropped some at the beginnings). Filtered observations for creating graphs. Transformed variables (took squares and percentage changes)
11	Save data in Stata.
        Saved data in Data\Derived\prices_all_clean.dta
12	Run ordinary least squares regression in Stata.
        Ran in Code\5_analysis.do
13	Create a graph (of any type) in State.
        Created several in Graphs\
14	Save regression tables and graphs as files. Demonstrate both.
        Saved in Graphs\ and Tables\
15	Install a Stata package. (Can be the same as we already did in class.)
        Installed in Code\1_install_packages.do
16	Commit files into git version control.
        Commited
17	Name files, functions and variables appropriately.
        Okay
18	Write helpful comments and commit messages. Demonstrate both.
        Wrote
19	Push a repository to GitHub.
        Push
20	Explain how to reproduce your work with short instructions or a self-documenting master script.
        Explained above

