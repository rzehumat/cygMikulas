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
