% class to create a simple resume

\LoadClass[10pt,letterpaper]{article}

\usepackage[utf8]{inputenc}
\usepackage[margin=0.7in]{geometry} 

\usepackage{enumitem}
\usepackage[none]{hyphenat}

\renewcommand{\familydefault}{\sfdefault}

\setitemize{noitemsep,topsep=0pt,parsep=0pt,partopsep=0pt} % remove all space around and within lists
\renewcommand\labelitemi{{\boldmath$\cdot$}}

\pagestyle{empty} % No page numbers

%Remove paragraph indentation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength\tindent
\setlength{\tindent}{\parindent}
\setlength{\parindent}{0pt}
\renewcommand{\indent}{\hspace*{\tindent}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\centering 

\newcommand{\nametitle}[3]
% \nametitle{name}{email}{phone}
{ 
    {\bf \huge #1}
    
    \smallskip
    #2 \ $\bullet$ #3
    \smallskip
    
}

\renewcommand{\section}[1]
% \section{section name}
{
    \smallskip
    {\bf \Large #1}\phantom{p} 
    \smallskip
    \hrule
    
}

\newcommand{\company}[2]
% \company{company}{location}
{
    \smallskip
    {\large {\bf #1} \hfill #2}
    
}

\newenvironment{position}[2]
% \position{title}{dates}
{
    {\indent \em #1 \hspace*{\fill} #2}
    \begin{itemize}[rightmargin=4em]}
{
    \end{itemize}
    
}

\newcommand{\shortposition}[2]
% \shortposition{title}{dates}
{
    {\indent \em #1 \hspace*{\fill} #2}

}

\newcommand{\twolist}[3]
% \twolist{width of first column}{header}{list}
{
	\setlength{\tabcolsep}{0pt} % removes column border space
	% Computes length of column two given the length of column 1
	\newlength\colTwo
	\setlength\colTwo\textwidth
	\addtolength\colTwo{-#1}
	\addtolength\colTwo{-\the\tindent}
	\addtolength\colTwo{-\the\tindent}
	\begin{tabular}{p{\the\tindent} p{#1} p{\colTwo} p{\the\tindent}}
		& #2 & #3 &
	\end{tabular}
    \let\colTwo\relax % allows re use of variable colTwo
    
}
