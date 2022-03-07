\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classnotes}
\LoadClass[a4paper]{article}


\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{graphicx}
	\graphicspath{{images/}} %where pictures are located

	\makeatletter
		\def\input@path{{images/}} %where pdf_tex are located
	\makeatother
	
\RequirePackage{tikz}

\RequirePackage{enumitem}
	\setenumerate[0]{label=(\alph*)}
\RequirePackage{hyperref}
	\hypersetup{
		unicode=false,   % non-Latin characters in Acrobat’s bookmarks
		colorlinks=true, 
		urlcolor=red     % color of external links
	}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{amsthm}

% General
\RequirePackage{teachingenv}

\setlength\parindent{0cm}
\setlength\parskip{1em}

%Example environment (numbered)
\theoremstyle{definition}
	\newtheorem{example}{Example}

\newtheoremstyle{bex} %Blue Book exercises
	{-2em}%〈Space above〉
	{}%〈Space below〉
	{\color{RoyalBlue}}%〈Body font〉
	{}%〈Indent amount〉
	{\bfseries}%〈Theorem head font〉
	{:}%〈Punctuation after theorem head〉
	{\newline}%〈Space after theorem head〉
	{}%〈Theorem head spec(can be left empty, meaning ‘normal’)
\theoremstyle{bex}
\newtheorem*{bex}{Exercises}

\newtheoremstyle{pex} %Purple Book exercises
	{-2em}%〈Space above〉
	{}%〈Space below〉
	{\color{Plum}}%〈Body font〉
	{}%〈Indent amount〉
	{\bfseries}%〈Theorem head font〉
	{:}%〈Punctuation after theorem head〉
	{\newline}%〈Space after theorem head〉
	{}%〈Theorem head spec(can be left empty, meaning ‘normal’)
\theoremstyle{pex}
\newtheorem*{pex}{Exercises}
