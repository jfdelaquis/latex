\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam_ib}
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
\graphicspath{{images/}}

%----------------%
%	Layout			%
%----------------%

\extrawidth{0.25cm}

\setlength\parindent{0cm}
\pagestyle{headandfoot}

\pointsinrightmargin
%\pointsdroppedatright %Us this if the command \droppoints is preferred
\bracketedpoints
\setlength{\rightpointsmargin}{1.25cm}

\qformat{
	\textbf{\thequestion.} [Maximum mark: \totalpoints] 
	\hfill
	\vrule depth 1.5em width 0pt
}
\renewcommand{\partlabel}{\textbf{(\thepartno)}}
\renewcommand{\subpartlabel}{\textbf{(\thesubpart)}}

\renewcommand{\questionshook}{%
%      \setlength{\leftmargin}{0cm}
%      \setlength{\labelsep}{0.5cm}
}

\renewcommand{\partshook}{
	\setlength{\itemsep}{.5em}
	\setlength{\topsep}{.5em}
}
\renewcommand{\subpartshook}{
	\setlength{\itemsep}{1em}
}

\firstpageheader{\textsl{\testclass}}{-- \thepage ~--}{\textsl\testtitle}
\firstpageheadrule
\runningheader{\textsl{\testclass}}{-- \thepage ~--}{\textsl\testtitle}
\runningheadrule
\firstpagefooter{}{}{\fbox{\fbox{\makebox[3.7cm][r]{\Large Points:\hspace{2em} / \pointsonpage{\thepage}}}}}
\runningfooter{}{}{\fbox{\fbox{\makebox[3.7cm][r]{\Large Points:\hspace{2em} / \pointsonpage{\thepage}}}}}
\SolutionEmphasis{\color{blue}}

%larger tables
\renewcommand{\arraystretch}{1.5}

%-----Tables-----%
\RequirePackage{array}
\RequirePackage{color, colortbl}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}} %Columns with centered text paragraph style
\renewcommand{\arraystretch}{1.5}
\renewcommand{\arraystretch}{1.5}


%-----Other------%
\RequirePackage{eurosym}

%Adding a blank page
\newcommand\blankpage{
	\newpage
	\hfill \textbf{\uppercase{blank page}} \hfill
	\thispagestyle{empty}
	\newpage
	}

%Dotted space for answers
\newcommand{\ansbox}{
	\fillwithdottedlines{\stretch{1}}
	\newpage
}
%New page for answer, removing the total points in the bottom page
\newcommand{\anspage}{
	\newpage
	\thispagestyle{empty}
	\ansbox
}

	
%====================
%Exam Information
%====================
\newcommand{\testtitle}{}
\newcommand{\testclass}{}
\newcommand{\testnotes}{}
\newcommand{\testdate}{}
\newcommand{\testtime}{}

%++++++++++++++++++++++++
%	Probabilities
%+++++++++++++++++++++++
\newcommand{\pr}[1]{\text{P}(#1)} %Straight P
\newcommand{\expect}[1]{\text{E}[#1]} %Straight E
\newcommand{\variance}[1]{\text{Var}[#1]} %Straight Var
