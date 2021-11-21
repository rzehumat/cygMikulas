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
\usepackage{booktabs}
\usepackage[czech]{babel}
\usepackage{amsmath}
\usepackage{pdfpages}
\usepackage{pax}
% \usepackage{floatrow}

\usepackage{chemformula} % balíček pro sazbu chemických rovnic
\usepackage{multirow} % umožňuje sloučit sloupce v tabulce 
\usepackage{icomma} % po desetinné čárce se v matematickém módu nevytvoří mezera

\usepackage{siunitx}
\sisetup{
    output-decimal-marker = {,},
    inter-unit-product=\ensuremath{\cdot},
}
\usepackage{mhchem}
\usepackage{makecell}
\usepackage{colortbl}

\newcommand{\checkfor}[1]{
  \ifcsname#1\endcsname%
    \shortTitle%
  \else%
    \@title
    % ... command '#1' does not exist ...%
  \fi%
}

% Switch implementation
\usepackage{xifthen}
\newcommand{\ifequals}[3]{\ifthenelse{\equal{#1}{#2}}{#3}{}}
\newcommand{\case}[2]{#1 #2} % Dummy, so \renewcommand has something to overwrite...
\newenvironment{switch}[1]{\renewcommand{\case}{\ifequals{#1}}}{}

% Example: Pick color by ID
\newcommand{\grafref}[2]{%
    \begin{switch}{#1}%
        \case{1}{\hyperref[#1]{Graf~\ref{#2}}}%
        \case{2}{\hyperref[#1]{Grafu~\ref{#2}}}%
        \case{3}{\hyperref[#1]{Grafu~\ref{#2}}}%
        \case{4}{\hyperref[#1]{Graf~\ref{#2}}}%
        \case{5}{\hyperref[#1]{Grafe~\ref{#2}}}%
        \case{6}{\hyperref[#1]{Grafu~\ref{#2}}}%
        \case{7}{\hyperref[#1]{Grafem~\ref{#2}}}%
    \end{switch}%
}%



% options -- styling etc
\pagestyle{fancy}
\fancyfoot[C]{}
\fancyhead[C]{}
% \fancyhead[L]{\shortTitle}
\fancyhead[L]{\checkfor{shortTitle}}
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
        \inst
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


\newcommandx{\dobr}[8][7=0.98, 8=0.98]{%
\begin{figure}[H]
    \centering
    \begin{minipage}[c]{0.49\textwidth}
        \centering
        \includegraphics[width=#7\textwidth]{img/#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}[c]{0.49\textwidth}
        \centering
        \includegraphics[width=#8\textwidth]{img/#4} % second figure itself
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


\newcommandx{\dgraf}[8][7=0.98, 8=0.98]{%
\begin{figure}[H]
    \centering
    \begin{minipage}{0.49\textwidth}
        \centering
		\captionsetup{name=Graf}
        \includegraphics[width=#7\textwidth]{img/#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}{0.49\textwidth}
        \centering
		\captionsetup{name=Graf}
        \includegraphics[width=#8\textwidth]{img/#4} % second figure itself
        \caption{#5}
        \label{#6}
    \end{minipage}
\end{figure}
}

\renewcommand{\figurename}{Obr.}
\renewcommand{\tablename}{Tab.}
\renewcommand{\refname}{Literatura}
\renewcommand\uv[1]{„#1“}					% czech quotation

\newcommand{\figref}[1]{%
    \hyperref[#1]{Obr.~\ref{#1}}%
}

\newcommand{\tabref}[1]{%
    \hyperref[#1]{Tab.~\ref{#1}}%
}

% \_ for non-itallic sub indices
\let\underscore\_                                           % underscore sign
\let\xor\^                                                  % xor sign
\renewcommand\_[2][1]{\ifmmode _{\textnormal{\scalebox{#1}{#2}}}\else\underscore#2\fi} %roman subscript
\renewcommand\^[2][1]{\ifmmode ^{\textnormal{\scalebox{#1}{#2}}}\else\xor#2\fi} %roman superscript
\def\smallind{0.8}
