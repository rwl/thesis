\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{strath_thesis}[2010/01/16 Strathclyde LaTeX PhD Class]
\RequirePackage{setspace}
\ExecuteOptions{a4paper,oneside,12pt,onecolumn,final}

% \DeclareOption{draft}{%
%  \PassOptionsToPackage{all}{draftcopy}%
%  \PassOptionsToClass{draft}{report}%
%  \AtEndOfClass{%
%    \RequirePackage{draftcopy}%
%    % I wanted to print timestamp of each file, but I don't see
%    % how to do that...
%    \draftcopyName{DRAFT: \today}{60 } % text for overprinting if in "draft" mode
%    }%
% }

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{report}
}

\ProcessOptions

\LoadClass{report}

\RequirePackage[
	plainpages=false,
    pdfpagelabels,
    pdfpagelayout=useoutlines,
    bookmarks,
    bookmarksopen=true,
    bookmarksnumbered=true,
    breaklinks=true,
    linktocpage,
    pagebackref,
    colorlinks=true,
    linkcolor=black,
    urlcolor=black,
    citecolor=black,
    anchorcolor=green,
    hyperindex=true,
    hyperfigures]{hyperref}

%\setlength{\evensidemargin}{25mm}
\setlength{\oddsidemargin}{15.6mm}
\setlength{\topmargin}{-4.4mm}
%\setlength{\headheight}{1.36cm}
%\setlength{\headsep}{1.00cm}
\setlength{\textheight}{224mm}
\setlength{\textwidth}{143mm}
%\setlength{\marginparsep}{1mm}
%\setlength{\marginparwidth}{3cm}
%\setlength{\footskip}{2.36cm}

% \RequirePackage[
%     top=1.0in,
%     bottom=1.0in,
%     inner=1.5in,
%     outer=1.0in,
%     ]
%     {geometry}

% clearemptydoublepage from page 92 of The LaTeX Companion 1993.
\newcommand{\clearemptydoublepage}{\newpage{\pagestyle{empty}\cleardoublepage}}

\newcommand{\declaration}{%
\clearemptydoublepage
\thispagestyle{plain}
\begin{quote}
This thesis is the result of the author's original research.  It has been
composed by the author and has not been previously submitted for examination
which has led to the award of a degree.

The copyright of this thesis belongs to the author under the terms of the
United Kingdom Copyright Acts as qualified by University of Strathclyde
Regulation 3.51. Due acknowledgement must always be made of the use of any
material contained in, or derived from, this thesis.

% \vspace{1cm}
% Signed:\hspace{7.6cm} Date: \today
\end{quote}
\newpage
}

\newenvironment{acknowledgements}%
{\clearemptydoublepage
\thispagestyle{plain}
\onehalfspacing
 \begin{center}
  \section*{Acknowledgements}
 \end{center}
 \begingroup
}{\newpage\endgroup\singlespacing}

\renewenvironment{abstract}%
{\clearemptydoublepage
\thispagestyle{plain}
\onehalfspacing
\begin{center}
  \section*{Abstract}
% \textbf{\@title}\\
% \@author
 \end{center}
 \begin{quote}
 \begingroup
}{\newpage\endgroup\end{quote}\singlespacing}

% The year and term the degree will be officially conferred
\def\degreedate#1{\gdef\@degreedate{#1}}
% The full (unabbreviated) name of the degree
\def\degree#1{\gdef\@degree{#1}}
% The name of your college or department(eg. Trinity, Pembroke, Maths, Physics)
\def\collegeordept#1{\gdef\@collegeordept{#1}}
% The name of your University
\def\university#1{\gdef\@university{#1}}
% Defining the crest
\def\crest#1{\gdef\@crest{#1}}

% define title page layout
\renewcommand{\maketitle}{%
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
%  \null\vfill
  \begin{center}
    \vspace*{1ex}
    {{\Large \@university} \par}
    {\large \vspace*{2ex}
    {{\@collegeordept} \par}
    { \Huge \vspace*{25mm} {\bfseries {\@title}} \par}
%    {\large \vspace*{35mm} {{\@crest} \par} \vspace*{25mm}}
	{\large \vspace*{8cm}}
	{\small by \par \vspace{5mm}}
    {{\Large \@author} \par}
    \vspace*{25mm}
    {A thesis presented in fulfilment of
    the\\ requirements for the degree of
    \par} \vspace*{2ex}
    {\it {\@degree} \par}
    \vspace*{4ex}
    {\@degreedate}}
  \end{center}
  \null\vfill}

% end of file:
%\endinput