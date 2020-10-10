# texmf

This repository is for any custom LaTeX class files or packages. Repository should be added to `texmf-local/tex/latex`. Depending on the system, `texmf-local` can be found  
Linux: ~/texmf\
Mac: /usr/local/texlive/texmf-local/tex/latex\
Windows: /c/textlive/texmf-local


After changing or adding any files to the directory, you need to rebuild the LaTeX tree by running `texhash` in the command line. It is a good idea to run the command after updating the repository if unsure.

## teaching
This is a folder containing class files and related files when writing exams or class notes. The class files are essentially a preamble in order to keep the actual exam files at a minimum and to retain consistency in the document layout.

### exam\_ib
This is a layout that is inspired how IB math exams are formatted. The class file is based on the `exam` class with regularly used commands and packages, with formatting based on the layout of the IB.

The following packages are loaded with this class:
* siunitx
* TikZ

The following commands are defined:

### coverpage
This is a `.tex` file used as `\input` if a coverpage is desired.
Following the template files (exam name, etc), a coverpage with the title, date, duration and logo will be created, along with a vertical grade table. Notes for the exam can also be added.
To input into an `exam` based class file, add
```
\input{coverpage}
\blankpage
```
`\blankpage` is optional in case you want the backside of the coverpage to be empty.

A grade table is generated based on the score per question.

### coverpage\_bypage
This is similar to `coverpage` however the grade table is printed as the total points on a page.
