\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cygMikulas}

\LoadClass{article}

\RequirePackage[czech,slovak]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[version=3]{mhchem}




\RequirePackage{float} % rozšířené možnosti umístění obrázků
\RequirePackage[unicode]{hyperref}
\RequirePackage{paralist}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}




\newcommand{\napisPrispevek}{

\pagestyle{fancy}
\fancyhf{}
\chead{\poradi. MIKULÁŠSKÉ SETKÁNÍ MLADÉ GENERACE ČNS }
\rhead{Overleaf}
\lhead{Guides and tutorials}
\rfoot{Page \thepage}

}
