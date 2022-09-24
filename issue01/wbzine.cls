\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wbzine}[2020/07/03 simple class for old school gaming zines]

\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}

\RequirePackage[a5paper]{geometry}
\geometry{inner=10mm, outer=10mm, top=10mm, bottom=16mm}
\geometry{footskip=6mm}
\setlength{\parindent}{0mm}
\setlength{\parskip}{3mm}
\RequirePackage{multicol}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\newcolumntype{Z}{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}X}
\newcolumntype{Y}{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}X}
\RequirePackage[table]{xcolor}    % loads also »colortbl«
\rowcolors{2}{gray!25}{white}
\RequirePackage{tcolorbox}

\setcounter{secnumdepth}{1}
\setcounter{tocdepth}{1}

\newcommand{\volume}[1]{

}

\newcommand{\issue}[1]{

}

\newcommand{\by}[1]{
\hfill\textit{#1}}


% Do I really need this?
%\setlength{\textwidth}{17.5cm}
%\setlength{\textheight}{25cm}



\def\@maketitle{%
      \null
         {\bfseries\fontsize{60}{55}
	 \selectfont \@title \par}%
	 \hrulefill
          {\large \@date}
\includegraphics[width=\textwidth]{coverart.png}
}

\def\@contentstitle{%
      \null
         {\bfseries\fontsize{70}{55}
	 \selectfont \@title \par}%
	 \hrulefill
          {\large
            \@author}
\tableofcontents
}

\newcommand{\smallmap}[1]{
%\begin{figure*}[htb]
\includegraphics[width=\columnwidth]{#1}
%\end{figure*}
}

\newcommand{\bigmap}[1]{
\end{multicols}
%\begin{figure*}
\noindent
\vfill
\includegraphics[width=\textwidth]{#1}
%\end{figure*}
\vfill
\begin{multicols}{2}}

\newcommand{\landscapemap}[1]{
\end{multicols}
%\begin{figure*}
\noindent
\includegraphics[width=\textheight,angle=90,origin=c]{#1}
%\end{figure*}
\begin{multicols}{2}}

%\renewcommand*\sfdefault{ugq}

\RequirePackage{titlesec}
\titlespacing{\section}{0pt}{*4}{*0.2}
\titleformat{\section}[frame]
 {\normalfont}
 {\filright\enspace\thesection\enspace}
 {2pt}
 {\Large\bfseries\filcenter}

