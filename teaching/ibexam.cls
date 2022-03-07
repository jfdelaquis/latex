\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ibexam}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions\relax
\LoadClass[a4paper,addpoints,12pt]{exam}


\RequirePackage{teachingenv}
\sisetup{per-mode = power} % Will output globally with a negative exponent.

% Hyperref for reference to questions by hyperlink, keeping the color black
\usepackage[hidelinks]{hyperref}
\hypersetup{
	colorlinks,
	allcolors=black
}

%----------------%
%     Layout     %
%----------------%

\extrawidth{0.25cm}

\setlength\parindent{0cm}
\pagestyle{headandfoot}

\pointsinrightmargin
\bracketedpoints
\setlength{\rightpointsmargin}{1.25cm}

\qformat{
	\textbf{\thequestion.} [Maximum mark: \totalpoints] 
	\hfill
	\vrule depth 1.5em width 0pt
}
\renewcommand{\partlabel}{\textbf{(\thepartno)}}
\renewcommand{\subpartlabel}{\textbf{(\thesubpart)}}

\renewcommand{\partshook}{
	\setlength{\itemsep}{.5em}
	\setlength{\topsep}{.5em}
}
\renewcommand{\subpartshook}{
	\setlength{\itemsep}{1em}
}

%Header
\firstpageheader{\textsl{\testclass}}{-- \thepage ~--}{\textsl\testtitle}
\firstpageheadrule
\runningheader{\textsl{\testclass}}{-- \thepage ~--}{\textsl\testtitle}
\runningheadrule

%Footer
\firstpagefooter{}{}{
	\ifprintanswers
	\else{
			\fbox{\large Marks:\hspace{2em} / \pointsonpage{\thepage}}
		}
	\fi}
\runningfooter{}{}{
		\ifprintanswers
	\else{
			\fbox{\large Marks:\hspace{2em} / \pointsonpage{\thepage}}
		}
	\fi}

% Solutions are unframed and printed in blue
\SolutionEmphasis{\color{blue}}
\unframedsolutions
\renewcommand{\solutiontitle}{}
\SolutionEmphasis{\color{blue}}

% Lined page to continue solution, removing the total points in the bottom page.
% It is not printed if solutions are printed
\newcommand{\anspage}{
	\ifprintanswers
\else{
	\newpage
	\thispagestyle{head}
	\fillwithdottedlines{\stretch{1}}
	\newpage
}
\fi
}

%========================
% Coverpage conditionals
%========================
\newif\iflogo
\logotrue

\newif\ifparent
\parenttrue

\newif\ifpointsbyquestions
\pointsbyquestionstrue

%====================
% Exam Information
%	To be filled using renewcommand in each respective document!
%====================
\newcommand{\testtitle}{}
\newcommand{\testclass}{}
\newcommand{\testnotes}{}
\newcommand{\testdate}{}
\newcommand{\testtime}{}
