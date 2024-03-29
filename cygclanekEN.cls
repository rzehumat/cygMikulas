%
% @author Matěj Rzehulka  <matej.rzehulka@fykos.cz>
%
% @description Class for CYG conference paper.
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cygclanekEN}
 
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
\usepackage[english]{babel}
\usepackage{amsmath}
\usepackage{mhchem}
\usepackage{siunitx}
\sisetup{output-decimal-marker = {.}}
\usepackage{makecell}
\usepackage{indentfirst}
\usepackage{listings}
\usepackage{subfigure}
\usepackage{multirow}
\usepackage{bm}
\usepackage{tabularx}

\usepackage{cleveref}
\crefname{enumi}{}{}
\crefmultiformat{enumi}{#2#1#3}{,#2#1#3}{,#2#1#3}{,#2#1#3}




% options -- styling etc
\pagestyle{fancy}
\fancyfoot[C]{}
\fancyhead[C]{}
\fancyhead[L]{\TitleShort}
\fancyhead[R]{Mikulášské setkání \Year}

 \graphicspath{{img/}}

\newcommand{\TitleShort}{
    \@title
}
\newcommand{\titleshort}[1]{
    \renewcommand{\TitleShort}{#1}
}



% commands -- redefinitions
\renewcommand{\maketitle}{%
    \begin{center}
	{\noindent\Huge \textbf{\@title}} \\
    \vspace{1em}
    {\noindent\Large \Names } \\
    \end{center}
    % \newline
        $~^*$Correspondent author: \Email
    \newline
    \begin{compactenum}
		\begin{small}
          \Institutions
		\end{small}
	\end{compactenum}
    \vspace{2em}
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
\begin{figure}[h]
\centering
\includegraphics[width=#4\textwidth]{#1}
\caption{#2}
\label{#3}
\end{figure}
}

\newcommand{\at}{\MVAt}


\newcommandx{\dobr}[8][7=0.98, 8=0.98]{%
\begin{figure}[H]
    \centering
    \begin{minipage}{0.49\textwidth}
        \centering
        \includegraphics[width=#7\textwidth]{#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}{0.49\textwidth}
        \centering
        \includegraphics[width=#8\textwidth]{#4} % second figure itself
        \caption{#5}
        \label{#6}
    \end{minipage}
\end{figure}
}

\newcommandx{\graf}[4][4=0.8]{%
\begin{figure}[h]
\centering
\captionsetup{name=Graf}
\includegraphics[width=#4\textwidth]{#1}
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
        \includegraphics[width=0.98\textwidth]{#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}{0.49\textwidth}
        \centering
		\captionsetup{name=Graf}
        \includegraphics[width=0.98\textwidth]{#4} % second figure itself
        \caption{#5}
        \label{#6}
    \end{minipage}
\end{figure}
}

\renewcommand{\figurename}{Obr.}
\renewcommand{\tablename}{Tab.}
\renewcommand{\refname}{Literatura}
% \renewcommand\uv[1]{„#1“}					% czech quotation

\newcommand{\Year}{0000}
\renewcommand{\year}[1]{
    \renewcommand{\Year}{#1}
}

\newcommand{\email}[1]{
    \renewcommand{\Email}{#1}
}

\newcommand{\keywords}[1]{
    \textbf{\textit{Keywords:}} #1
}

\newcommand{\Names}{
    \name[*]{Sparrow, Jack}{1},
    \name{Potter, Harry}{2}
}

\newcommand{\names}[1]{
    \renewcommand{\Names}{#1}
}
\newcommand{\institution}[2]{
    \item \label{#1} #2
}
\newcommand{\Institutions}{
    \institution{es1}{Epic School 1}
    \institution{hgw}{Hogwarts}
}
\newcommand{\institutions}[1]{
    \renewcommand{\Institutions}{#1}
}
\newcommand{\name}[3][]{
   #2$^{\cref{#3}}$#1%
}

\renewenvironment{abstract}
{\par\noindent\textbf{\abstractname} \newline \begin{small}}
 {\par\medskip\end{small}}

 \newcommand{\tb}[1]{\textbf{#1}}

 \let\underscore\_                                           % underscore sign
\let\xor\^                                                  % xor sign
\renewcommand\_[2][1]{\ifmmode _{\textnormal{\scalebox{#1}{#2}}}\else\underscore#2\fi} %roman subscript
\renewcommand\^[2][1]{\ifmmode ^{\textnormal{\scalebox{#1}{#2}}}\else\xor#2\fi} %roman superscript
\def\smallind{0.8}

\newcommand{\cit}[1]{
    \begin{compactitem}
        #1
    \end{compactitem}
}
