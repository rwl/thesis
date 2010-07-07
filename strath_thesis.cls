\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{strath_thesis}[2010/04/08 Strathclyde LaTeX PhD Class]
\RequirePackage{setspace}
\ExecuteOptions{a4paper,oneside,12pt,onecolumn,final}

\DeclareOption{draft}{%
  \PassOptionsToPackage{all}{draftcopy}%
  \PassOptionsToClass{draft}{report}%
  \AtEndOfClass{%
    \RequirePackage{draftcopy}%
    \draftcopyName{DRAFT: \today}{60 } % text for overprinting in "draft" mode
    }%
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions

\LoadClass{report}

\RequirePackage[
	plainpages=false,
    pdfpagelabels,
    pdfpagelayout=SinglePage,
    bookmarks,
    bookmarksopen=true,
    bookmarksnumbered=true,
    breaklinks=true,
    linktocpage,
%    pagebackref,
    colorlinks=true,
    linkcolor=black,
    urlcolor=black,
    citecolor=black,
    anchorcolor=green,
    hyperindex=true,
    hyperfigures]{hyperref}

% %\setlength{\evensidemargin}{25mm}
% \setlength{\oddsidemargin}{15.6mm} % plus 1 inch
% \setlength{\topmargin}{20mm}
% \setlength{\headheight}{0mm}
% \setlength{\headsep}{0mm}
% \setlength{\textheight}{237mm} % 297-20-40
% \setlength{\textwidth}{145mm} % 210-40-25
% %\setlength{\marginparsep}{1mm}
% %\setlength{\marginparwidth}{3cm}
% %\setlength{\footskip}{2.36cm}

\RequirePackage[
	a4paper,
    top=20mm,
    bottom=40mm,
    inner=40mm,
    outer=25mm]{geometry}

% clearemptydoublepage from page 92 of The LaTeX Companion 1993.
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}

\newcommand{\submittedtext}{{A thesis presented in fulfilment of the\\
requirements for the degree of}}

\newcommand{\declaration}{%
\clearemptydoublepage
\thispagestyle{plain}
\onehalfspacing
 \begin{center}
  \section*{}
 \end{center}
\begin{quote}
This thesis is the result of the author's original research.  It has been
composed by the author and has not been previously submitted for examination
which has led to the award of a degree.

The copyright of this thesis belongs to the author under the terms of the
United Kingdom Copyright Acts as qualified by University of Strathclyde
Regulation 3.51. Due acknowledgement must always be made of the use of any
material contained in, or derived from, this thesis.

\vfill
Signed:\hfill Date: \today
\end{quote}
\singlespacing
\newpage
}

\newenvironment{acknowledgements}%
{\clearemptydoublepage
\thispagestyle{plain}
%\addcontentsline{toc}{chapter}{Acknowledgements}
\onehalfspacing
 \begin{center}
  \section*{Acknowledgements}
 \end{center}
 \begin{quote}
}{\newpage\end{quote}\singlespacing}

\renewenvironment{abstract}%
{\clearemptydoublepage
\thispagestyle{plain}
\addcontentsline{toc}{chapter}{Abstract}
\onehalfspacing
\begin{center}
  \section*{Abstract}
 \end{center}
 \begingroup
}{\newpage\endgroup\singlespacing}

% Year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
\global\def\@degreedate{\number\year}
% Full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
\global\def\@degree{Doctor of Philosophy}
% Name of department
\def\department#1{\gdef\@department{#1}}
\global\def\@department{Department of Electronic and Electrical Engineering}
% Name of University
\def\university#1{\gdef\@university{#1}}
\global\def\@university{University of Strathclyde}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}

% define title page layout
\renewcommand{\maketitle}{%
%  \renewcommand{\footnotesize}{\small}
%  \renewcommand{\footnoterule}{\relax}
  \thispagestyle{empty}
  %% Set the line spacing to 1 for the title page.
  \begin{spacing}{1}
  \begin{large}
  \begin{center}
    \vspace*{10mm}
    {\Large \@university} \\
    \vspace*{2ex}
    {\@department} \\
    {\Huge \vspace*{25mm} {\bfseries {\@title}}}\\
%    {\large \vspace*{35mm} {{\@crest} \par} \vspace*{25mm}}
    \vfill
	{\small by}\\
	\vspace*{5mm}
    {\Large \@author}\\
    \vspace*{25mm}
    {\submittedtext}\\
    \vspace*{2ex}
    {\it {\@degree}}\\
    \vspace*{4ex}
    {\@degreedate}\\
%    \vspace*{.2in}
  \end{center}
  \end{large}
  \end{spacing}
}

\newenvironment{romanpages}
{\cleardoublepage\setcounter{page}{1}\renewcommand{\thepage}{\roman{page}}}
{\cleardoublepage\renewcommand{\thepage}{\arabic{page}}\setcounter{page}{1}}

% end of file:
%\endinput