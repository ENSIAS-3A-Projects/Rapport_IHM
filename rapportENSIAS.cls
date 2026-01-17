\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rapportENSIAS}
\RequirePackage{scrlfile}
% Ligne supprimée car elle cause l'erreur "Undefined control sequence"
\LoadClass[a4paper,12pt]{report}

\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage[french]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[section]{placeins}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathtools}
\RequirePackage{siunitx}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subcaption}
\RequirePackage{wallpaper}
\RequirePackage{nomencl}
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry}

\titleformat{\chapter}[display]
  {\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titlespacing*{\chapter}{0pt}{-10pt}{10pt}
\titleformat{\section}{\normalfont\Large\bfseries}{\thesection}{1em}{}

\newcommand{\UE}[1]{\renewcommand{\UE}{#1}}
\newcommand{\sujet}[1]{\renewcommand{\sujet}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\jury}[1]{\renewcommand{\jury}{#1}}

\newcommand{\fairemarges}{
    \fancyhf{}
    \fancyheadoffset{1cm}
    \setlength{\headheight}{1.5cm}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{1pt}
    \renewcommand{\footrulewidth}{1pt}
    \fancyfoot[L]{Projet IHM}
    \fancyfoot[R]{2024-2025}
    \fancyhead[L]{\nouppercase{\leftmark}}
    \pagestyle{fancy}
}

\newcommand{\fairepagedegarde}{
\begin{titlepage}
\ThisLRCornerWallPaper{1}{logos/background.png}
    \centering
    \includegraphics[width=0.3\textwidth]{logos/ensias.png}\hfill
	\includegraphics[width=0.3\textwidth]{logos/um5logo.png}\par\vspace{1cm}
	{\scshape\LARGE École Nationale Supérieure d'Informatique et d'Analyse des Systèmes - Rabat \par}
	\vspace{1.5cm}
	{\scshape\Large \sujet \par}
	\vspace{1cm}
    \rule{\linewidth}{0.2 mm} \par \vspace{0.4cm}
	{\huge\bfseries \titre \par}
    \rule{\linewidth}{0.2 mm} \par \vspace{1.5cm}
	\begin{minipage}{0.5\textwidth}
            \begin{flushleft} \large
            \textbf{Élèves :}\par
            \eleves\par
            \end{flushleft}
        \end{minipage}
        ~
        \begin{minipage}{0.4\textwidth}
            \begin{flushright} \large
            \textbf{Encadrant :} \par
             \enseignant \par
            \end{flushright}
        \end{minipage}
        \par\vspace{1cm}
        \begin{minipage}{0.4\textwidth}
            \begin{center} \large
            \textbf{Jury :} \par
             \jury \par
            \end{center}
        \end{minipage}
        \vfill
        {\large Année Universitaire 2024-2025\par}
\end{titlepage}
}

\newcommand{\tabledematieres}{\tableofcontents\newpage}