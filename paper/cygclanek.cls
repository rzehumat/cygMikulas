%
% @author Matěj Rzehulka  <matej.rzehulka@fykos.cz>
%
% @description Class for CYG conference paper.
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cygclanek}
 
% inherit from article class
\LoadClass[a4paper,11pt]{article}

\usepackage[left=1.5cm,
		right=1.5cm,
		top=2cm,
		bottom=2cm
		]{geometry}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{lmodern}
\usepackage{fancyhdr}
\usepackage{authblk}
\usepackage{etoolbox}
\usepackage[style=iso-numeric, backend=biber, language=czech]{biblatex}
\usepackage{csquotes}
\usepackage{amsthm}
\usepackage[hidelinks,unicode]{hyperref}
\usepackage{paralist}
\usepackage{marvosym}
\usepackage{float}
\usepackage{graphicx}
\usepackage[font=small,labelfont=bf]{caption}
\usepackage{forloop}
\usepackage{xargs}
\usepackage{textcomp}

% options -- styling etc
\pagestyle{fancy}
\fancyfoot[C]{\thepage}
\fancyhead[C]{}
\fancyhead[L]{\@title}
\fancyhead[R]{Mikulášské setkání 2020}

% commands -- redefinitions
\renewcommand{\maketitle}{%
	\begin{center}
		\vspace{4mm}
	{\Huge \textbf{\@title}} \\
	\vspace{7mm}
	{\Large \@author } \\

	\vspace{2mm}
		\email
	\vspace{2mm}
	\begin{compactenum}
		\centering
		\begin{scriptsize}
		\item \label{vut} VUT v Brně, Fakulta elektrotechniky a komunikačních technologií, Ústav elektroenergetiky, Technická 3058/10, 616 00 Brno, Česká republika
		\item \label{ujv} UJV
		\item \label{ujf} UJF
		\end{scriptsize}
	\end{compactenum}
	\end{center}
}

% commands -- new
\newcommand{\footnotei}[2]{%
\mbox{%
\setbox0\hbox{#1}%
\copy0%
\hspace{-\wd0}}%
\footnote{#2}%
}

\newcommand{\refei}[2]{%
\mbox{%
\setbox0\hbox{#1}%
\copy0%
\hspace{-\wd0}}%
$^{\ref{#2}}$%
}

\newcommandx{\obr}[4][4=0.8]{%
\begin{figure}[H]
\centering
\includegraphics[width=#4\textwidth]{./img/#1}
\caption{#2}
\label{#3}
\end{figure}
}

\newcommand{\at}{\MVAt}


\newcommandx{\dobr}[8][7=0.49,8=0.49]{%
\begin{figure}[H]
    \centering
    \begin{minipage}{#7\textwidth}
        \centering
        \includegraphics[width=0.98\textwidth]{img/#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}{#8\textwidth}
        \centering
        \includegraphics[width=0.98\textwidth]{img/#4} % second figure itself
        \caption{#5}
        \label{#6}
    \end{minipage}
\end{figure}
}

\newcommandx{\graf}[4][4=0.8]{%
\begin{figure}[H]
\centering
\captionsetup{name=Graf}
\includegraphics[width=#4\textwidth]{./img/#1}
\caption{#2}
\label{#3}
\end{figure}
}


\newcommand{\dgraf}[6]{%
\begin{figure}[H]
    \centering
    \begin{minipage}{0.49\textwidth}
        \centering
		\captionsetup{name=Graf}
        \includegraphics[width=0.98\textwidth]{img/#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}{0.49\textwidth}
        \centering
		\captionsetup{name=Graf}
        \includegraphics[width=0.98\textwidth]{img/#4} % second figure itself
        \caption{#5}
        \label{#6}
    \end{minipage}
\end{figure}
}

\renewcommand{\figurename}{Obr.}
\renewcommand{\tablename}{Tab.}
\renewcommand{\refname}{Literatura}
\newcommand\uv[1]{„#1“}					% czech quotation

% \RequirePackage{titling}
% \documentclass[11pt, a4paper]{article}
% \usepackage[slovak,czech]{babel}
% \RequirePackage{optional} % ought be first
% \RequirePackage{amssymb}
% \RequirePackage[no-math]{fontspec} % no-math is because of mathrm(Omega)
% \RequirePackage{xltxtra} % includes xunicode, fontspec
% \RequirePackage{xunicode}
% \UndeclareUTFcharacter[\UTFencname]{x2026}{\textellipsis} % we want normal ellipsis
% 
% \RequirePackage[version=3]{mhchem}
% \RequirePackage{listings}
% 
% \RequirePackage[xetex,
%   setpagesize=false,
%   linkcolor=black,
%   anchorcolor=black,
%   citecolor=black,
%   filecolor=black,
%   urlcolor=black,
%   bookmarks=true,
% ]{hyperref}
% \opt{web}{\hypersetup{colorlinks=false}}
% \opt{print}{\hypersetup{colorlinks=true}}
% \RequirePackage{xkeyval}
% \RequirePackage{fkslang}
% \RequirePackage{pifont}
% 
% \newfontfamily\cyrillicfont[Ligatures=TeX, % recommended
% 	ItalicFont=[cmunti.otf],
% 	BoldFont=[cmunbx.otf],
% 	BoldItalicFont=[cmunbi.otf],
% 	SlantedFont=[cmunsl.otf]
% ]{[cmunrm.otf]}
% 
% \widowpenalty 1000 \clubpenalty 1000 \displaywidowpenalty 1000
% 
% % layout settings
% \RequirePackage[includeheadfoot,
%   a5paper,
%   margin=0.7cm,
%   headsep=0.2cm]{geometry}
% \if@twoside
%   \raggedbottom % twoside layout causes expanding vertical space around environments
% \fi
% 
% \RequirePackage{fancyhdr}
% \pagestyle{fancy}
% \fancyhead{}
% \fancyhead[L]{\bfseries\small \met@headername}
% \fancyhead[R]{\bfseries\small \met@volumeid}
% 
% % options
% \fancyfoot{}
% \if@twoside
%   \fancyfoot[EL]{\bfseries \thepage}
%   \fancyfoot[OR]{\bfseries \thepage}
% \else
%   \fancyfoot[C]{\bfseries \thepage}
% \fi
% 
% % Some packages rely on this condition
% \newif\ifyearbook
% \yearbookfalse
% 
% % FYKOS packages
% \RequirePackage{fksmeta}
% \RequirePackage{fkssugar}
% %\RequirePackage{fkslegacy}
% \RequirePackage{fksfigures}
% \RequirePackage{fkstables}
% \RequirePackage{fksmisc}
% 
% % counters
% \newcounter{year}
% \newcounter{batch}[year]
% \newcounter{problem}[batch]
% \newcounter{solvedbatch}
% 
% % headings
% \renewcommand\section{\@startsection {section}{1}{\z@}%
%   {-3.5ex \@plus -1ex \@minus -.2ex}%
%   {1.5ex \@plus.2ex}%
%   {\normalfont\sffamily\slshape\huge}}
% \renewcommand\subsection{\@startsection {subsection}{2}{\z@}%
%   {-3.25ex \@plus -1ex \@minus -.2ex}%
%   {1.0ex \@plus.2ex}%
%   {\normalfont\sffamily\slshape\Large}}
% \renewcommand\subsubsection{\@startsection {subsubsection}{3}{\z@}%
%   {-3.25ex \@plus -1ex \@minus -.2ex}%
%   {1.0ex \@plus.2ex}%
%   {\normalfont\sffamily\slshape\normalsize}}
% \newcommand\problem{\@startsection {subsection}{2}{\z@}%
%   {-3.25ex \@plus -1ex \@minus -.2ex}%
%   {1.0ex \@plus.2ex}%
%   {\normalfont\bfseries\large}}
% \newcommand\solutionnote[1]{%
%   \ifyearbook\else%
%   \subsubsection{Poznámky k došlým řešením}#1%
%   \fi}
% 
% \newcommand\taskhint[2]{\par\noindent\emph{#1}\quad{#2}}
% 
% \setcounter{secnumdepth}{-1} % do not number headings
% 
% % other
% \input{problems}
% \problemsdir{../problems}
% \input{fkssignature}
% \signaturesfile{../signatures.tex}
% 
% \newcommand\makefooter{%
% \vspace*{\fill}
% \noindent\begin{minipage}{\textwidth}
% \hrule
% \smallskip
% \begin{center}
% \met@licence
% \end{center}
% \end{minipage}
% }
% 
% \AtBeginDocument{%
%   \renewcommand\figurename{\lngopt{cs}{Obr.}\lngopt{en}{Fig.}}
%   \renewcommand\tablename{Tab.}
% }
% 
% 
% 
% \@ifundefined{UseOption}{\def\UseOption{web}}{} % when no option set, we use web settings
% \DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
% \ProcessOptions
