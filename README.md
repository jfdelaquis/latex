# latex

This repository is a collection of my custom LaTeX class files or packages. The content of the repository should be added to `texmf-local/tex/latex/tex/latex/local`. Depending on the system, `texmf-local` can typically be found in
* Linux and MacOS: `/usr/local/texlive/texmf-local/tex/latex/local`
* Windows: `C:\textlive\texmf-local`

After changing or adding any files to the directory, you need to rebuild the LaTeX tree by running `texhash` in the command line with the correct permissions. It is a good idea to run the command after updating the repository.

Alternatively, having the respective files in your current working directory should also work.

## teaching
This is a folder containing LaTeX class and style files for writing exams or math-related documents for teaching. The class files are essentially a preamble and settings based on other class files included in the LaTeX distribution. They are mainly to keep the actual content of documents at a minimum and to retain consistency in every document layout produced.

For consistency purposes, each document should be within its own directory. All images can be placed in a subdirectory named `images`, or directly in the working directory of the LaTeX document.

View the template source for getting started with the class and styles defined below.

### teachingenv
My teaching environment style file containing often used packages and custom commands. See the definitions and loaded packages in the source file.


### ibexam
This is a layout that is inspired by the IB math exams format. The class file is based on the `exam` class. Regularly used commands and packages are in the included package file `teachingenv`. For more information on typsetting exams using the base `exam` class, refer to its documentation. 

See the `ibexam-template.tex` to get started.

### coverpage
This is a `.tex` file used as `\input` if a coverpage is desired. This is a predefined coverpage with variables set in the `ibexam` document.
It is a separate document to give the possibility of making your own coverpages if you prefer not using this predefined one. It generates a title, date, duration and optionally a logo, along with a vertical grade table which can be split into one or more columns. The basename for the logo should be named `schoollogo`. The variables are defined in the actual `ibexam` class file. See the included template file for the variables which can be defined.

To input into any `exam` based class file, add the following lines before the `questions` environement:

```
\input{coverpage}
\blankpage
```

`\blankpage` is optional in case you want the backside of the coverpage to be empty.

### classnotes
An predefined environment for creating teaching notes.

### tieightyfour
This is a package using TikZ which allow to generate the TI-84 calculator keys directly inline in LaTeX documents. It is particularly useful when writing documentation for students to show the steps taken to obtain results and show how to use the calculator in general. See the given documentation `tieightyfour.pdf` for the possible commands. To use this package, simply include it in your preamble `\usepackage{tieightyfour}`.

## Other classes and packages
* kbordermatrix.sty is a matrix package not included in the texlive distribution, available on [CTAN](https://www.ctan.org/pkg/kbordermatrix?lang=en)
