\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam_cambridge}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions\relax
\LoadClass[a4paper,addpoints,11pt]{exam}

%----------------%
%	Packages	%
%----------------%
\RequirePackage{amsmath, amssymb, amsfonts}
\RequirePackage{siunitx}
	\sisetup{per-mode = symbol} %Will output globally with a slash. Other options: reciprocal, fraction
\RequirePackage{tikz}

%----Graphics----%
\RequirePackage{graphicx}
%\graphicspath{{images/}}

%-----Other------%
\RequirePackage{eurosym}

%----------------%
%	Layout			%
%----------------%

\extrawidth{0.25cm}

\setlength\parindent{0cm}
\pagestyle{headandfoot}

\pointsinrightmargin
	\setlength{\rightpointsmargin}{1.25cm}
\bracketedpoints

\firstpagefooter{}{}{
	\ifprintanswers
	\else
	\fbox{\fbox{\makebox[3.7cm][r]{\Large Points:\hspace{2em} / \pointsonpage{\thepage}}}}
	\fi}
\runningfooter{}{}{
	\ifprintanswers
	\else
	\fbox{\fbox{\makebox[3.7cm][r]{\Large Points:\hspace{2em} / \pointsonpage{\thepage}}}}
	\fi}

\unframedsolutions
\renewcommand{\solutiontitle}{}
\SolutionEmphasis{\color{blue}}


\renewcommand{\questionlabel}{\textbf\thequestion.}
\renewcommand{\partlabel}{\textbf{(\thepartno)}}
\renewcommand{\subpartlabel}{\textbf{(\thesubpart)}}

%Adding a blank page
\newcommand\blankpage{
	\newpage
	\hfill \textbf{\uppercase{blank page}} \hfill
	\thispagestyle{empty}
	\newpage
	}

%\renewcommand{\partshook}{
%	\setlength{\itemsep}{.5em}
%	\setlength{\topsep}{.5em}
%	}

%larger tables
\renewcommand{\arraystretch}{1.5}

%====================
%Exam Information
%====================
\newcommand{\testtitle}{}
\newcommand{\testclass}{}
\newcommand{\testnotes}{}
\newcommand{\testdate}{}
\newcommand{\testtime}{}
