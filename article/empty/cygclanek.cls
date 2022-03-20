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
\usepackage{mhchem}
\usepackage{siunitx}
\usepackage{makecell}

% options -- styling etc
\pagestyle{fancy}
\fancyfoot[C]{}
\fancyhead[C]{}
\fancyhead[L]{\@title}
\fancyhead[R]{Mikulášské setkání \Rok}

% commands -- redefinitions
\renewcommand{\maketitle}{%
		\vspace{4mm}
	{\noindent\Huge \textbf{\@title}} \\
    {\hspace{0.02em}\Large \Names } \\
    \newline
        $~^*$Korespondenční autor: \Email
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
    \begin{minipage}{0.49\textwidth}
        \centering
        \includegraphics[width=#7\textwidth]{img/#1} % first figure itself
        \caption{#2}
        \label{#3}
    \end{minipage}\hfill
    \begin{minipage}{0.49\textwidth}
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
\renewcommand\uv[1]{„#1“}					% czech quotation

\newcommand{\Rok}{0000}
\newcommand{\rok}[1]{
    \renewcommand{\Rok}{#1}
}

\newcommand{\email}[1]{
    \renewcommand{\Email}{#1}
}

\newcommand{\keywords}[1]{
    \textbf{\textit{Klíčová slova:}} #1
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
    #2$^{\ref{#3}}$#1
}

\renewenvironment{abstract}
 {\par\noindent\textbf{\abstractname} \ignorespaces \newline \noindent \begin{small}}
 {\par\medskip\end{small}}
 \graphicspath{{figures/}}
