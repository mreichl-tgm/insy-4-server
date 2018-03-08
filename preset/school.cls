\ProvidesClass{school}
\LoadClass[a4paper,11pt]{article}

\RequirePackage{a4wide}
\RequirePackage{microtype}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}
\RequirePackage[default,light,semibold]{sourceserifpro}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathtools}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[marginal, norule, perpage]{footmisc}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{hyperref}
\RequirePackage{booktabs}
\RequirePackage{url}
\RequirePackage[absolute]{textpos}
\RequirePackage[toc]{glossaries}
% Package Configuration
\hypersetup{
colorlinks=true,
linkcolor=MidnightBlue,
urlcolor=MidnightBlue
}
% Optional, may uncomment
\RequirePackage{minted}
\usemintedstyle{lovelace}
% Variables
\newcommand\@subject{}
\newcommand\subject[1]{\renewcommand\@subject{#1}}
\newcommand\@subtitle{}
\newcommand\subtitle[1]{\renewcommand\@subtitle{#1}}
% Settings
\def\arraystretch{1.5}
\renewcommand{\thefootnote}{\Roman{footnote}}

\makeatletter
\renewcommand{\@maketitle}{
    \newpage
    \null
    \vskip 2em
    \begin{center}
    \let \footnote \thanks
    \begin{center}
        \Large{\makeatletter\@subject\makeatother}\\
        \rule{0.5\textwidth}{0.1 mm}
    \end{center}
    \vspace{1 em}
    \huge{\makeatletter\@title\makeatother} \vspace{0.5 em} \\
    \large{\makeatletter\@subtitle\makeatother} \vspace{1.5 em}
    \par
    \vskip 1.5em
    {\large
      \lineskip .5em
      \begin{tabular}[t]{c}
        \@author
      \end{tabular}\par}
    \vskip 1em
    {\large \@date}
  \end{center}
  \par
  \vskip 1.5em}
\makeatother

\makeglossaries
