%%
%% This is file `report.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `report')
%%
%% This is a generated file.
%%
%% Copyright 1993 1994 1995 1996 1997 1998 1999 2000
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%%
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%%
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{report}
              [2000/05/19 v1.4b
 Standard LaTeX document class]
\newcommand\@ptsize{}
\newif\if@restonecol
%\newif\if@titlepage
\newif\if@surnamecolor \@surnamecolorfalse

\newif\if@doublespace
\DeclareOption{doublespace}{%
\@doublespacetrue}


%\@titlepagetrue
\newif\if@openright
\newif\if@print
\newif\if@usetimes
\DeclareOption{times}{%
\@usetimestrue}
\if@compatibility\else
\DeclareOption{a4paper}
   {\setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\DeclareOption{custompaper}
   {\setlength\paperheight {229.1mm}
    \setlength\paperwidth  {152.1mm}}
\DeclareOption{thmscount}{\gdef\@thmscount{thmscount}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{print}{\setlength\overfullrule{0pt}\@printtrue}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
%\DeclareOption{titlepage}{\@titlepagetrue}
%\if@compatibility\else
%\DeclareOption{notitlepage}{\@titlepagefalse}
%\fi
\if@compatibility
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
%sen%\def\biboptions#1{\g@addto@macro\@biboptions{,#1}}
%sen%\def\@biboptions{}
\newif\if@cropmarkson \@cropmarksontrue
\newif\if@theoremsty \@theoremstytrue
\newif\if@mytheorem \@mytheoremfalse
\newif\if@singleno \@singlenofalse
\newif\if@thmscount \@thmscountfalse
\newif\if@CE \@CEfalse
\newif\if@MSC \@MSCfalse
\DeclareOption{center}{\PassOptionsToPackage{a4center}{crop}}
\DeclareOption{a4center}{\PassOptionsToPackage{a4center}{crop}}
\DeclareOption{crop}{\PassOptionsToPackage{cam}{crop}\global\@cropmarksontrue}
\DeclareOption{nocrop}{\PassOptionsToPackage{off}{crop}\global\@cropmarksonfalse}
\DeclareOption{grid}{\setlength\overfullrule{0pt}\AtBeginDocument{\DRAWGRID}}
\DeclareOption{surname}{\@surnamecolortrue}
\DeclareOption{nosurname}{\@surnamecolorfalse}
\DeclareOption{notheoremsty}{\@theoremstyfalse}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
%sen%\DeclareOption{authoryear}{\xdef\@biboptions{authoryear}}
%sen%\DeclareOption{number}{\xdef\@biboptions{square,numbers}}
\DeclareOption{webpdf}{\gdef\@webpdf{WEBPDF}}
\DeclareOption{mytheorem}{\@mytheoremtrue}
\DeclareOption{singleno}{\@singlenotrue}
\DeclareOption{nocompress}{\gdef\@nocompress{nocompress}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}
\ExecuteOptions{custompaper,center,10pt,twoside,onecolumn,final,openany,crop}
\ProcessOptions
%

%
%%%%%%%%%%%%%%%%%%%%%%%% *** SIZES *** %%%%%%%%%%%%%%%%%%%%%%%%%%
%
%\input{size1\@ptsize.clo}
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt\@xiipt
   \abovedisplayskip 8\p@ \@plus3\p@ \@minus6\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\if@doublespace
  \RequirePackage[doublespacing]{setspace}
\fi
\if@usetimes
  \newcommand\small{%
    \fontsize{8}{10pt plus 0.10pt minus 0.10pt}\selectfont%
    \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
    \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip
  }
  \newcommand\footnotesize{%
    \fontsize{7}{8}\selectfont%
    \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
    \abovedisplayshortskip \z@ \@plus\p@
    \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
    \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip
  }
  \newcommand{\scriptsize}{\fontsize{7.3}{8.5pt}\selectfont}
  \newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
  \newcommand\large{\@setfontsize\large\@xiipt{14}}
  \newcommand\Large{\@setfontsize\Large\@xivpt{18}}
  \newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
  \newcommand\huge{\@setfontsize\huge\@xxpt{25}}
  \newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

  \newcommand{\headersize}{\fontsize{8}{10pt}\selectfont}
  \newcommand{\footersize}{\fontsize{10}{10pt}\selectfont}
  \newcommand{\tabsize}{\fontsize{7}{8pt}\selectfont\bfseries\vfill}
  \newcommand{\abssize}{\fontsize{8}{10pt}\selectfont\leftskip12\p@\rightskip12\p@}
  \newcommand{\episize}{\fontsize{8}{10pt}\selectfont\leftskip12\p@\rightskip12\p@}
  \newcommand{\extractsize}{\fontsize{10}{12pt}\selectfont\leftskip24\p@\rightskip24\p@}
  \newcommand{\authsize}{\fontsize{10}{12pt}\selectfont\bfseries}
  \newcommand{\affilsize}{\fontsize{10}{12pt}\selectfont\raggedright}
  \newcommand{\titlesize}{\fontsize{16}{20pt}\selectfont\bfseries\raggedright}
  \newcommand{\refssize}{\fontsize{7}{9pt}\selectfont\bfseries}
  \newcommand{\captionsize}{\fontsize{7}{8}\selectfont}
  \newcommand{\captionsizebf}{\fontsize{7}{8}\selectfont\bfseries}
\else
  \newcommand\small{%
    \fontsize{9.3}{10pt plus 0.10pt minus 0.10pt}\selectfont%
    \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
    \abovedisplayshortskip \z@ \@plus3\p@
    \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
    \def\@listi{\leftmargin\leftmargini
               \topsep 6\p@ \@plus2\p@ \@minus2\p@
               \parsep 3\p@ \@plus2\p@ \@minus\p@
               \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip
  }
  \newcommand\footnotesize{%
    \fontsize{7}{8}\selectfont%
    \abovedisplayskip 8\p@ \@plus2\p@ \@minus4\p@
    \abovedisplayshortskip \z@ \@plus\p@
    \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
    \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip
  }
  \newcommand{\scriptsize}{\fontsize{7.3}{8.5pt}\selectfont}
  \newcommand\tiny{\@setfontsize\tiny\@vipt\@viipt}
  \newcommand\large{\@setfontsize\large\@xiipt{14}}
  \newcommand\Large{\@setfontsize\Large\@xivpt{18}}
  \newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
  \newcommand\huge{\@setfontsize\huge\@xxpt{25}}
  \newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}

  \newcommand{\headersize}{\fontsize{8}{10pt}\selectfont}
  \newcommand{\footersize}{\fontsize{10}{10pt}\selectfont}
  \newcommand{\tabsize}{\fontsize{7}{8pt}\selectfont}
  \newcommand{\abssize}{\fontsize{8}{10pt}\selectfont}
  \newcommand{\authsize}{\fontsize{10}{12pt}\selectfont\bfseries}
  \newcommand{\affilsize}{\fontsize{10}{12pt}\selectfont}
  \newcommand{\titlesize}{\fontsize{16}{20}\selectfont}
  \newcommand{\refssize}{\fontsize{7}{9pt}\selectfont}
  \newcommand{\captionsize}{\fontsize{7}{8pt}\selectfont}
  \newcommand{\captionsizebf}{\fontsize{7}{8pt}\selectfont\bfseries}
\fi



%%%%%%%%%%%%%%%%%%%% ** PAGE LAYOUT ** %%%%%%%%%%%%%%%%%%%
%
%
% Set page layout dimensions
\setlength\topmargin{.25in}
\addtolength\topmargin{-1in}       % subtract out the 1 inch driver margin
%
\setlength\headheight{7.5\p@}
\setlength\topskip   {10\p@}
\setlength\headsep   {32pt}
\addtolength\headsep{-\topskip}
%
%
\newdimen\typewidth
\newdimen\sidemargin
\newdimen\guttermargin
\setlength\typewidth{311pt}
\setlength\textwidth{311pt}
\setlength\sidemargin{\typewidth}  % calculation of side margin
\addtolength\sidemargin{-\textwidth}
\setlength\guttermargin{\sidemargin}  % calculation of side margin
\addtolength\guttermargin{-1pc}
%
\setlength\textheight{44\baselineskip}
\addtolength\textheight{-.9pt}
%
%
\setlength\oddsidemargin{65pt}
\addtolength\oddsidemargin{-1in}   % subtract out the 1 inch driver margin
%
\setlength\evensidemargin  {\paperwidth}
\addtolength\evensidemargin{-2in}
\addtolength\evensidemargin{-\textwidth}
\addtolength\evensidemargin{-\oddsidemargin}

\setlength\footskip{40pt}
\setlength\maxdepth{4pt}
\setlength\marginparsep {18\p@}
\setlength\marginparpush{5\p@}
\setlength\marginparwidth {5pc}
\def \@marginparreset {%
        \reset@font
        \fontfamily{\sfdefault}\fontsize{8}{10}\selectfont\raggedright
        \@setminipage}
%
%
%%%%%%%%%b-KOO
\long\def\koo#1#2#3{\vbox to0pt{\hsize0pt\kern #2\hbox to0pt{\kern#1{#3}\hss}\vss}}
\long\def\zeroCC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}}}
\long\def\zeroUC#1{\vbox to0pt{\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}}}
\long\def\zeroCR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}\vss}}
\long\def\zeroUR#1{\vbox to0pt{\hbox to0pt{\hss #1}\vss}}
\long\def\zeroLL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}}}
\long\def\zeroUL#1{\vbox to0pt{\hbox to0pt{#1\hss}\vss}}
\long\def\zeroCL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}\vss}}
\def\VRHDW#1#2#3{\vrule height #1 depth #2 width #3}
\def\HRHDW#1#2#3{\hrule height #1 depth #2 width #3}
\def\HD#1#2{\vrule height #1pt depth #2pt width 0pt\relax}
%
\newdimen\grid@sidemargin
\newdimen\grid@wd
\newdimen\grid@ht
\newdimen\grid@linewd\grid@linewd=0.1pt
\newdimen\grid@topofline
\grid@topofline\headheight%
\advance\grid@topofline\headsep%
\advance\grid@topofline.35\topskip%
%
\def\oddevenswitch{\ifodd\c@page \grid@sidemargin=\oddsidemargin\else\grid@sidemargin=\evensidemargin\fi}%
%
\def\DRAWGRID{%
\def\GRIDRULES{\oddevenswitch
\grid@wd=\textwidth \advance\grid@wd by 2\grid@linewd
\grid@ht=\textheight
\advance\grid@ht\headheight
\advance\grid@ht\headsep
\advance\grid@ht by 2\grid@linewd
\advance\grid@ht by -2.1pt
\hbox to0pt{%
   \vbox to0bp{\kern-\headheight%
   \hbox to\textwidth{%
     \koo{-\grid@linewd}{0pt}{\zeroLL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \koo{-\grid@linewd}{\headheight}{\zeroLL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \koo{-\grid@linewd}{-\grid@linewd}{\zeroUL{\VRHDW{\grid@ht}{0pt}{\grid@linewd}}}%
     \koo{\textwidth}{-\grid@linewd}{\zeroUL{\VRHDW{\grid@ht}{0pt}{\grid@linewd}}}%
     \koo{-\grid@linewd}{\grid@ht}{\zeroUL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \koo{-\grid@linewd}{\grid@topofline}{\zeroUL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \hss}\vss}\hss}}%

\def\FIRSTLINEGRID{%
\ifdim\firstlinefixedpos>0pt%
\oddevenswitch%
\hbox to0pt{%
   \vbox to0bp{\kern240pt%
\hbox to\textwidth{\koo{-\grid@linewd}{10\baselineskip}{\zeroUL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}}}}%
\fi}%
}%
%
\def\GRIDRULES{}
\def\FIRSTLINEGRID{}
%
%%%%%%%%%e-KOO
%
%
%
%
%\thinmuskip = 3mu
%\medmuskip = 4mu
%\thickmuskip = 5mu

%
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 0\p@ \@minus 0\p@}
%
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{}
\setlength\parskip{0\p@}
\setlength\parindent{10pt}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
%%%%%%%%%%%%%%%%%%%% ** FLOAT PLACEMENT ** %%%%%%%%%%%%%%%%%%%
%
% Float placement parameters.
%
% The total number of floats that can be allowed on a page.
\setcounter{totalnumber}{9}
% The maximum number of floats at the top and bottom of a page.
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
% The maximum part of the top or bottom of a text page that can be
% occupied by floats. This is set so that at least four lines of text
% fit on the page.
\renewcommand\topfraction{.9}
\renewcommand\bottomfraction{.9}
% The minimum amount of a text page that must be occupied by text.
% This should accomodate four lines of text.
\renewcommand\textfraction{.1}
% The minimum amount of a float page that must be occupied by floats.
\renewcommand\floatpagefraction{.85}%{.91}
% The same parameters repeated for double column output
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.9}
\renewcommand\dblfloatpagefraction{.9}
% Space between floats
\setlength\floatsep{26\p@ plus 6pt minus 3pt}
% Space between floats and text
\setlength\textfloatsep{13\p@ plus 6pt minus 3pt}
% Space above and below an inline figure
\setlength\intextsep   {26\p@ plus 6pt minus 3pt}
% For double column floats
\setlength\dblfloatsep    {22\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{18\p@ \@plus 2\p@ \@minus 0\p@}

% Space left at top, bottom and inbetween floats on a float page.
\setlength\@fptop{0\p@ \@plus 1fil}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}

% The same for double column
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
%
\newcommand{\up}{\HD{9}{0}}
\newcommand{\down}{\HD{0}{4}}
\newcommand{\Ndown}{\HD{0}{4}}
%
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{12\p@}
\setlength\belowcaptionskip{2\p@}
\newlength\belowtabcaptionskip
\setlength\belowtabcaptionskip{4\p@}
\newlength\abovetabcaptionskip
\setlength\abovetabcaptionskip{3.5\p@}
%
\newdimen\figurewidth
\newdimen\figureheight%
\def\EPSfbox#1{\centering%
\settowidth{\figurewidth}{\epsfbox{#1}}%
\settoheight{\figureheight}{\epsfbox{#1}}%
\vspace*{\@fptop}%
\epsfbox{#1}
}%
%
\long\def\@makecaption#1#2{%
\ifx\@webpdf\undefined\else%
\def\HyperRaiseLinkDefault{\figureheight}%
\advance\HyperRaiseLinkDefault\abovecaptionskip%
\fi%
  \vskip\abovecaptionskip
\sbox\@tempboxa{\vbox{{\captionsizebf#1}\vskip0pt {\fontsize{7}{8}\selectfont #2\vfill}}}%
%  \sbox\@tempboxa{{\fontsize{7}{8}\selectfont\bfseries #1} {\fontsize{7}{8}\selectfont #2}}%
  \ifdim \wd\@tempboxa >\hsize
    \captionsize{\captionsizebf#1} \fontsize{7}{8}\selectfont{#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
%
%
\long\def\@figurecaption#1#2{%
\ifx\@webpdf\undefined\else%
\def\HyperRaiseLinkDefault{\figureheight}%
\advance\HyperRaiseLinkDefault\abovecaptionskip%
\fi%
  \vskip\abovecaptionskip
\sbox\@tempboxa{\vbox{{\captionsizebf#1}\vskip0pt {\fontsize{7}{8}\selectfont #2\vfill}}}%
%  \sbox\@tempboxa{{\fontsize{7}{8}\selectfont\bfseries #1} {\fontsize{7}{8}\selectfont #2}}%
  \ifdim \wd\@tempboxa >\hsize
    \captionsize{\captionsizebf#1} \fontsize{7}{8}\selectfont{#2}\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
%
%\long\def\@tablecaption#1#2{%
%  \vskip\abovetabcaptionskip
%  \sbox\@tempboxa{\vbox{\tablecaptionfont{\tablenumberfont #1}\vskip0pt #2}}%
%  \ifdim \wd\@tempboxa >\hsize
% {\tablecaptionfont{\tablenumberfont #1}\vskip0pt#2} \par
%  \else
%    \global \@minipagefalse
%    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
%  \fi
%  \vskip\belowtabcaptionskip}
%
\newcounter{panel}
\def\thepanel{\Alph{panel}}
\setcounter{panel}{1}

\def\paneltable#1{\gdef\@paneltable{#1}}
\paneltable{\relax}

\long\def\@tablecaption#1#2{%
  \vskip\abovetabcaptionskip
  \sbox\@tempboxa{\vbox{\tablecaptionfont{\tablenumberfont #1\@paneltable}\vskip0pt #2}}%
  \ifdim \wd\@tempboxa >\hsize
 {\tablecaptionfont{\tablenumberfont #1\@paneltable}\vskip0pt #2} \par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowtabcaptionskip
  }

\long\def\tabcap#1{%
  \vskip\abovetabcaptionskip
  \sbox\@tempboxa{\vbox{\tablecaptionfont #1}}%
  \ifdim \wd\@tempboxa >\hsize
 {\tablecaptionfont#1} \par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowtabcaptionskip}
%

\def\journalname{The Review of Financial Studies}
\def\journalabb{rfs}

\def\startpage{\pageref{FirstPage}}
\def\endpage{\pageref{LastPage}}
\def\volumeyear{0}
\def\volumenumber{0}
\def\volumeissue{0}
\def\DOI{XXX000}

\gdef\copyrightline{\copyright\ The Author 2014. Published by Oxford %
University Press on behalf of The Society for Financial %%%%%%%%changed by Shyamendu on 31.08.12 as reqd on hhs100 and again reverted back%%%
Studies.\newline All rights reserved. For Permissions, please
e-mail: journals.permissions@oup.com.}

\markboth{\fontsize{7}{7}\selectfont\emph{\journalname} /
\emph{v}\ \emph{\volumenumber}\ \emph{n}\ \emph{\volumeissue}\
\emph{\volumeyear}}{}
\def\shorttitle#1{\markboth{\fontsize{7}{7}\selectfont\emph{\journalname} / \emph{v}\ \emph{\volumenumber}\ \emph{n}\ \emph{\volumeissue}\ \emph{\volumeyear}}{\fontsize{7}{7}\selectfont\emph{#1}}}
\def\ps@title{%
\def\@oddhead{\GRIDRULES%\setlength{\fboxsep}{0pt}%
}
\let\@evenhead\@oddhead
\def\@oddfoot{%
\footnotesize\begin{minipage}{\textwidth}{\vspace*{-75.4pt}\copyrightline\\
doi:10.1093/{\journalabb}/{\DOI}\hfill\accessfont{\@access}}\end{minipage}}
\let\@evenfoot\@oddfoot}

\def\ps@RFS{%
\def\@evenhead{\GRIDRULES{\headersize\leftmark\hfill\phantom{\thepage}}}
\def\@oddhead{\GRIDRULES{\headersize\rightmark\hfill\phantom{\thepage}}}
\def\@evenfoot{{\footersize\thepage\hfill\phantom{\thepage}}}
\def\@oddfoot{{\footersize\phantom{\thepage}\hfill\thepage}}%
}

\def\ps@plain{%
\def\@evenhead{\GRIDRULES{\headersize\leftmark\hfill\phantom{\thepage}}}
\def\@oddhead{\GRIDRULES{\headersize\rightmark\hfill\phantom{\thepage}}}
\let\@evenfoot\@empty
\let\@oddfoot\@empty%
}

% Multiple author definition
\def\author#1{\addtocounter{authors}{1}
  \ifcase\theauthors\or
    \gdef\@author{#1}\or
    \gdef\@authorii{#1}\or
    \gdef\@authoriii{#1}\or
    \gdef\@authoriv{#1}\or
    \gdef\@authorv{#1}\or
    \gdef\@authorvi{#1}\or
    \gdef\@authorvii{#1}\or
    \gdef\@authorviii{#1}
  \fi}
\long\def\surname#1{\if@surnamecolor{\smash{\colorbox{snamecolor}{\hskip-2pt#1\hskip-2pt}}}\else{{#1}}\fi}
\def\cename#1{\gdef\@cename{#1}}
\cename{\relax}
\def\copyeditor{\if@CE{\protect{\slugfont Copyedited by: \@cename}}\else\relax\fi}
\def\mstype#1{\gdef\@mstype{#1}}
\mstype{\relax}
\def\msc{\if@MSC{\protect{\slugfont MANUSCRIPT CATEGORY:\quad \@mstype}}\else\relax\fi}
\gdef\@affiliation{}
\def\affiliation#1{
  \ifcase\theauthors\or
    \gdef\@affiliation{#1}\or
    \gdef\@affiliationii{#1}\or
    \gdef\@affiliationiii{#1}\or
    \gdef\@affiliationiv{#1}\or
    \gdef\@affiliationv{#1}\or
    \gdef\@affiliationvi{#1}\or
    \gdef\@affiliationvii{#1}\or
    \gdef\@affiliationviii{#1}
  \fi}

\newcounter{authors}
\setcounter{authors}{0}
\def\authors#1{}

\def\mystar{\ifx\@webpdf\undefined
            $\ast$
            \else%
            \hyperlink{\csname fn\@roman\c@footnote\endcsname}{\hskip-7pt\textsuperscript{$\ast$}\hskip3.5pt}%
            \fi}

\def\JEL#1{\gdef\@JEL{(\textit{JEL} {#1})}}
\JEL{}
\def\history#1{\gdef\@history{{#1}}}
\history{}
    
\newbox\absbox
\def\abstract#1{\gdef\@abstract{#1}}   
\def\mystar{\ifx\@webpdf\undefined
            $\ast$
            \else%
            \hyperlink{\csname fn\@roman\c@footnote\endcsname}{\hskip-7pt\textsuperscript{$\ast$}\hskip3.5pt}%
            \fi}

\def\ackscorresp#1{%
  \gdef\@ackscorresp{%
    \renewcommand{\thefootnote}{\fnsymbol{footnote}}
    \def\@thefnmark{}
    \footnotetext{#1}
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}
  }
}

\let\@ackscorresp\@empty

\def\myfnsymbol#1{\gdef\@myfnsymbol{#1}}
\myfnsymbol{\hskip-7pt*\hskip3.5pt}
\newcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \long\def\@makefntext##1{\footnotesize%
    \ifnum\c@footnote=1%
       \ifx\@webpdf\undefined%
          {\mystar}%
       \else%
          \hypertarget{\csname fn\@roman\c@footnote\endcsname}{\mystar}%
       \fi%
    \else%
       \ifx\@webpdf\undefined%
          {\textsuperscript{\@thefnmark}}%
       \else%
          \hypertarget{\csname fn\@roman\c@footnote\endcsname}{\textsuperscript{\@thefnmark}}%
       \fi%
    \fi##1}%
    \def\@makefnmark{%
    \ifnum\c@footnote=1%
       \ifx\@webpdf\undefined%
          {\mystar}%
       \else%
          \hyperlink{\csname fn\@roman\c@footnote\endcsname}{\mystar}%
       \fi%
    \else%
       \ifx\@webpdf\undefined%
          {\textsuperscript{\@thefnmark}}%
       \else%
          \hyperlink{\csname fn\@roman\c@footnote\endcsname}{\leftskip-7pt
\hskip-\fnumwd\@hangfrom{\textsuperscript{\@thefnmark}}\hskip\fnumwd}%
       \fi%
    \fi}
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{title}\label{FirstPage}\@ackscorresp
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@address\@empty
  \global\let\ackscorresp\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \global\let\@epi\@empty
}
\def\@maketitle{%
\def\thefootnote{\relax}
  \null
  \if@doublespace
    \vskip 10pt
  \else
    \vskip 10pt %
  \fi
  \begin{flushleft}%
    {\vskip-1.4pc\titlesize\bf \@title \par}%
    \vskip 1.5em%
    \vskip-3\p@
     { \noindent
   {\authsize\@author\par}%\vskip 1pt
   {\noindent\affilsize\@affiliation\par}\vskip 12pt
   \ifnum\theauthors>1{\noindent\authsize\@authorii\par}%\vskip 1pt
     {\noindent\affilsize\@affiliationii\par}\vskip 12pt\fi
   \ifnum\theauthors>2{\noindent\authsize\@authoriii\par}\vskip 1pt
     {\noindent\affilsize\@affiliationiii\par}\vskip 12pt\fi
   \ifnum\theauthors>3{\noindent\authsize\@authoriv\par}\vskip 1pt
     {\noindent\affilsize\@affiliationiv\par}\vskip 12pt\fi
   \ifnum\theauthors>4{\noindent\authsize\@authorv\par}\vskip 1pt
     {\noindent\affilsize\@affiliationv\par}\vskip 12pt\fi
   \ifnum\theauthors>5{\noindent\authsize\@authorvi\par}\vskip 1pt
     {\noindent\affilsize\@affiliationvi\par}\vskip 12pt\fi
   \ifnum\theauthors>6{\noindent\authsize\@authorvii\par}\vskip 1pt
     {\noindent\affilsize\@affiliationvii\par}\vskip 12pt\fi
   \ifnum\theauthors>7{\noindent\authsize\@authorviii\par}\vskip 1pt
     {\noindent\affilsize\@affiliationviii\par}\fi
   \par}
   \end{flushleft}
   \ifx\@abstract\undefined
   \else
    \vskip 6pt%
    \noindent{\hskip12pt\abssize\begin{minipage}[t]{288pt}\@abstract\hskip.5em\@JEL\par\end{minipage}}
  %
  \fi
   \ifx\@history\undefined
   \else
    \vskip 15.5pt%
    \noindent{\abssize\hskip12pt\begin{minipage}[t]{288pt}\@history\end{minipage}}
  %
  \fi
   \ifx\@epi\undefined
   \else
    \vskip 16pt%
    \noindent{\hskip12pt\abssize\begin{minipage}[t]{288pt}\@epi\end{minipage}}
  %
  \fi
  \vskip 26pt plus 3pt minus 2pt%
\enlargethispage{-26.3pt}}


\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{3}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname~\thepart
       \par
       \vskip 20\p@
     \fi
     \Huge \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \Huge \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Huge \bfseries #1\par\nobreak
    \vskip 40\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \Huge \bfseries  #1\par\nobreak
    \vskip 40\p@
  }}
\def\periodaftersect#1{\gdef\@periodaftersect{#1}}
\periodaftersect{.}

\def\@seccntformat#1#2{%
\ifappend
  \csname the#1\endcsname\ifnum #2<2.\ \else\ifnum #2<3\ \fi\fi\ %
\else
  \csname the#1\endcsname\ifnum #2<2.\ \else\ifnum #2<3\ \fi\fi\ %
\fi%
}

\newbox\@tempboxa
% This version of \@sect puts the number of a section into the margin
\def\@sect#1#2#3#4#5#6[#7]#8{%
\ifappend
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}{#2}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \setbox\@tempboxa\hbox{\bf\@svsec}%
    \def\width{\wd\@tempboxa}%
    \begingroup
      #6{%
        \@hangfrom{\hskip #3 \relax \@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \setbox\@tempboxa\hbox{\bf\@svsec}%
    \def\width{\wd\@tempboxa}%
    \def\@svsechd{%
      #6{\hskip #3 \relax \@svsec#8.\ }%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}
\else
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}{#2}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \setbox\@tempboxa\hbox{\bf\@svsec}%
    \def\width{\wd\@tempboxa}%
    \begingroup
      #6{%
        \@hangfrom{\ifnum #2<2\hspace*{-\width}\else\hskip #3\fi
                   \relax\@svsec}%
          \interlinepenalty \@M #8\@@par}%
    \endgroup
    \csname #1mark\endcsname{#7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \setbox\@tempboxa\hbox{\bf\@svsec}%
    \def\width{\wd\@tempboxa}%
    \def\@svsechd{%
      #6{\ifnum #2<2\hspace*{-\width}\else\hskip #3\fi
         \relax\@svsec#8\@periodaftersect\ }%
      \csname #1mark\endcsname{#7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}
\fi%
}

\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-16pt \@plus -6pt \@minus -2pt}%
                                   {6pt \@plus0pt \@minus0pt}%
                                   {\hskip-12\p@\normalfont\normalsize\bfseries\raggedright\hangindent12pt}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-14pt \@plus -6pt \@minus -4pt}%
                                     {0.1pt \@plus0pt \@minus 0pt}%
                                     {\normalfont\normalsize\bfseries\raggedright}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-14pt \@plus -6pt \@minus -4pt}%
                                     {-6pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
%\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\def\periodafterenum#1{\gdef\@periodafterenum{#1}}
\periodafterenum{.}
\def\enumopen#1{\gdef\@enumopen{#1}}
\def\enumclose#1{\gdef\@enumclose{#1}}
\enumopen{}
\enumclose{}
\newcommand\labelenumi{\@enumopen\theenumi\@enumclose\@periodafterenum}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\leftmargin=\parindent\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}

\newenvironment{epigraph}
               {\list{}{
               \topsep=18pt plus2pt
               \leftmargin9pc\rightmargin1em}%
                \item\raggedleft\itshape\relax}
               {\endlist}

\if@compatibility
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi

\def\enumerate{\vskip2pt\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne
      \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\leftmargin=28pt\itemsep 0pt\parsep 2pt
         \def\makelabel##1{\hss\llap{##1}}}\fi}

\let\endenumerate =\endlist

\def\itemize{\ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
\edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
\list{\csname\@itemitem\endcsname}{\topsep=6pt\leftmargin=2.5em\itemsep 0pt\parsep 0pt
\def\makelabel##1{\hss\llap{##1}}}\fi}

\let\enditemize =\endlist

\newtheorem{theorem}{Theorem}
\newtheorem{lemma}{Lemma}
\newtheorem{corollary}{Corollary}
\newtheorem{proposition}{Proposition}
\newtheorem{assumption}{Assumption}
\newtheorem{prediction}{Prediction}
\newtheorem{definition}{Definition}
\newtheorem{remark}{Remark} %%
\newtheorem{hypothesis}{Hypothesis}
\newtheorem{example}{Example}
\newtheorem{exercise}{Exercise}
\newtheorem{step}{Step}%%

\def\@begintheorem#1#2{\vspace*{7.9pt}\trivlist
   \item[\hskip \labelsep{\bfseries #1\ #2.\hskip4.5pt}]}
\def\@opargbegintheorem#1#2#3{\vspace*{7.9pt}\trivlist
      \item[\hskip \labelsep{\bfseries #1\ #2\ (#3).}]}
\def\@endtheorem{\endtrivlist\vspace*{7.9pt}}

\newlength\theorempreskipamount
\setlength{\theorempreskipamount}{7pt}

\def\th@plain{%
%%  \let\thm@indent\noindent % no indent
\thm@headfont{\scshape}% heading font is bold%\quad
\thm@notefont{\upshape\mdseries}% same as heading font
\thm@headpunct{.}% no period after heading
\thm@headsep 5\p@ plus\p@ minus\p@\relax%
%%  \let\thm@swap\@gobble
%%  \thm@preskip\topsep
%%  \thm@postskip\theorempreskipamount
\@bodyfont % body font
}


\def\endmark{\hskip 1em{\scriptsize\raisebox{0.5pt}{\fontsize{10}{10}\selectfont$\blacksquare$}}\par}
\newenvironment{proof}{\par\medbreak
\noindent\textbf{Proof.}\hskip1em\ignorespaces}{\null\hfill\endmark\medbreak}

\newenvironment{prooflem}{\par\medbreak
\noindent\textbf{Proof of Lemma}\hskip1em\ignorespaces}{\null\hfill\endmark\medbreak}


\newenvironment{proofpro}{\par\medbreak
\noindent\textbf{Proof of Proposition}\hskip1em\ignorespaces}{\null\hfill\endmark\medbreak}


\newenvironment{proofcor}{\par\medbreak
\noindent\textbf{Proof of Corollary}\hskip1em\ignorespaces}{\null\hfill\endmark\medbreak}

\newif\ifappend % Are we in the Appendix?
\def\appname#1{\gdef\@appname{#1}}
\appname{A}
\newcommand\appendix{\par
  \appendtrue
  \setcounter{equation}{0}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{figure}{0}%
  \setcounter{table}{0}%
    \gdef\thesection{\@arabic\c@section}
  \gdef\thesubsection{\thesection.\@arabic\c@subsection}
  \gdef\thesubsubsection{\thesubsection.\@arabic\c@subsubsection}
  \gdef\theparagraph{\thesubsection.\@arabic\c@subsubsection}
  \gdef\theequation{\@appname\@arabic\c@equation}
  \gdef\thefigure{\thesection\@arabic\c@figure}
  \gdef\thetable{\thesection\@arabic\c@table}
  \renewcommand\section{\@startsection {section}{1}{5\p@}%
                                   {-16pt \@plus -6pt \@minus -2pt}%
                                   {6pt \@plus3pt \@minus2pt}%
                                   {\hskip-15\p@\normalfont\normalsize\bfseries\raggedright\hangindent12pt}}
  \renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-14pt \@plus -6pt \@minus -4pt}%
                                     {0.1pt \@plus2pt \@minus 2pt}%
                                     {\normalfont\fontsize{8}{10}\selectfont\bfseries\raggedright}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-14pt \@plus -6pt \@minus -4pt}%
                                     {-1em}%
                                     {\normalfont\fontsize{8}{10}\selectfont\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                     {-14pt \@plus -6pt \@minus -4pt}%
                                     {-1em}%
                                     {\normalfont\fontsize{8}{10}\selectfont\bfseries}}
                                     
  \fontsize{8}{10pt}\selectfont
}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{Figure~\thefigure}
\newenvironment{figure}
               {\let\@makecaption\@figurecaption\@float{figure}}
               {\end@float}
\newcounter{table}
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi\@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\let\@makecaption\@tablecaption\@float{table}}
               {\vfill\end@float}
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{0em}
\newcommand\@tocrmarg{0em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
%
\def\dotfill{\leaders\hbox to.7em{\hss .\hss}\hskip\z@ plus  1fill}%
%
\def\@dottedtocline#1#2#3#4#5{\fontsize{10}{12}\selectfont%
\ifnum #1>\c@tocdepth \else
\ifnum #1=1 \vskip6pt
\else
  \vskip \z@ plus.2\p@\fi
  {\leftskip #2\relax \rightskip \@pnumwidth plus 1fill \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
   \interlinepenalty\@M
   \leavevmode\fontsize{10}{12}\rm\selectfont
   \@tempdima #3\relax \advance\leftskip \@tempdima \hbox{}\hskip -\leftskip
   \ifnum#1=1
   {\bfseries #4}\nobreak\hfill\nobreak\hb@xt@\@pnumwidth{\hss \bfseries #5}
   \else
   {#4}\nobreak\dotfill\nobreak\hb@xt@\@pnumwidth{\hss #5}
   \fi\par}\fi}
%
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{%
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure

\newenvironment{forthcoming}[1][]{\vspace*{-34.5pt}\par\thispagestyle{empty}\raggedright\ifx#1\empty\noindent{\fontsize{12}{13}\selectfont Forthcoming Articles}\else\noindent{\fontsize{11}{13}\selectfont #1}\fi\par\vskip5pt
\list{\relax}{\settowidth{\labelwidth}{0pt}
\leftmargin\labelwidth
\labelsep=0pt
\advance\leftmargin\labelsep
\addtolength{\leftmargin}{-12.8pt}
\topsep=0pt
\itemsep=6pt
\itemindent=0pt
\listparindent=0pt
\parsep=0pt}
\item[]\relax}
{\endlist}

\def\fthtitlefont{\fontfamily{\rmdefault}\fontsize{10}{11}\fontseries{b}\fontshape{n}\selectfont\leftskip0pt\rightskip 0pt plus 1fill}
\def\fthtitle#1{\noindent\fthtitlefont #1\par\nobreak}

\def\fthauthorfont{\fontfamily{\rmdefault}\fontsize{10}{11}\fontseries{m}\fontshape{n}\selectfont\leftskip0pt\rightskip 0pt plus 1fill}
\def\fthauthor#1{\noindent\fthauthorfont #1\par\nobreak\vskip2pt plus .3pt minus .1pt}


\newdimen\bibindent
\setlength\bibindent{1.5em}
%\newenvironment{thebibliography}[1]
%     {\chapter*{\bibname
%        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
%      \list{\@biblabel{\@arabic\c@enumiv}}%
%           {\settowidth\labelwidth{\@biblabel{#1}}%
%            \leftmargin\labelwidth
%            \advance\leftmargin\labelsep
%            \@openbib@code
%            \usecounter{enumiv}%
%            \let\p@enumiv\@empty
%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%      \sloppy
%      \clubpenalty4000
%      \@clubpenalty \clubpenalty
%      \widowpenalty4000%
%      \sfcode`\.\@m}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%      \endlist}
%\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\footnotesep=6.5pt
\renewcommand\footnoterule{%
  \kern-2.3\p@
  \hrule\@width36\p@ \@height .5\p@
  \kern2.3\p@}
\newbox\fnumbox
\newdimen\fnumwd
\newdimen\footnumskip
\def\footnum#1{\gdef\@footnum{#1}}
\footnum{\arabic{footnote}}
\def\@makefnmark{\@textsuperscript{\scriptsize\@footnum}}
\long\def\@makefntext#1{\setbox\fnumbox=\hbox{\textsuperscript{\arabic{footnote}}}
\fnumwd\wd\fnumbox
%\noindent\ifnum\c@footnote>9\hskip-\fnumwd\leftskip3.5pt\else\hskip-\fnumwd\ifnum\c@footnote=0\leftskip-1pt\else\leftskip-3.5pt\fi\fi
%\noindent\hskip-\fnumwd\@hangfrom
\noindent\hskip-4pt\llap{\ifnum\c@footnote>0\hbox to \fnumwd{\hss\textsuperscript{\arabic{footnote}}}\else\textsuperscript{\fnsymbol{footnote}}\fi}\hskip4pt#1\footnumskip=0pt}
%
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi

%
%%%%%%%%%%%%%%%%%%%% ** OTHER MACAROS ** %%%%%%%%%%%%%%%%%%%
%
\RequirePackage{pifont,latexsym,ifthen,crop,mathrsfs,rotating,natbib,calc,textcase,booktabs,dcolumn,graphicx,wrapfig,boxedminipage,multirow,epsfig}%bbm,
\RequirePackage{amsfonts,amssymb,amsbsy,amsmath} \RequirePackage[errorshow]{tracefnt}
%\usepackage[dvipsone]{color}
%\definecolor{tint}{cmyk}{0,0,0,0.4}

%\ifx\@nocompress
%\undefined%
%\usepackage[space,sort,compress]{cite}
%%%%\usepackage[sort&compress]{hynatbib}
%\fi

%\ifx\@webpdf\undefined
%\usepackage{natbib}
%\bibpunct[, ]{[}{]}{,}{n}{,}{,}
%\bibsep=0pt
%\fi
\ifx\@webpdf\undefined\else%
\usepackage{hypernat}%% used with natbib pdfstartview={FitH -32768},
\fi
\ifx\@webpdf\undefined
%\def\url#1{#1}%
\def\href#1#2{#1}%
\else%raiselinks,
\usepackage[hyperfootnotes, dvipsone, breaklinks=true, colorlinks=false, urlcolor=blue, linkcolor=blue,citecolor=blue,linkbordercolor=0 0 0,filebordercolor=0 0 0,citebordercolor=0 0 0,
urlbordercolor=0 0 0,bookmarks,bookmarksopen=true,bookmarksnumbered=true,pdfpagelayout={OneColumn},pdfstartview={FitH -32768}]{hyperref}%
\fi%
%
%\usepackage[all]{xy}
\usepackage[mathscr]{euscript}

%
%\RequirePackage[LY1]{fontenc}
%\RequirePackage[LY1,mtbold]{mathtime}%,uprightgreek
%
\@twosidetrue
\flushbottom
\frenchspacing
%
\newif\iffirstpagegiven \firstpagegivenfalse
\newif\iflastpagegiven   \lastpagegivenfalse

% use \firstpage and \lastpage to set the page range explicitly
\newcommand\firstpage[1]{%
  \gdef\@firstpage{#1}
  \global\firstpagegiventrue%
  }
\def\@firstpage{1}

\newcommand\lastpage[1]{%
  \xdef\@lastpage{#1}%
  \global\lastpagegiventrue}
\def\@lastpage{0}

\def\setlastpage{\iflastpagegiven\else
  \edef\@tempa{@lastpage}%
  \expandafter
  \ifx \csname \@tempa \endcsname \relax
    \gdef\@lastpage{0}%
  \else
    \xdef\@lastpage{\@nameuse{@lastpage}}%
  \fi
  \fi}

\def\writelastpage{%
  \iflastpagegiven
  \else
    \immediate\write\@auxout%
    {\string\global\string\@namedef{@lastpage}{\thepage}}
  \fi}

\def\setfirstpage{%
  \iffirstpagegiven
  \else
    \xdef\@firstpage{\thepage}
  \fi}
%
\AtBeginDocument{\setfirstpage\setlastpage}
\AtEndDocument{\writelastpage}
%

\newcommand\Jobid{RFS}
\newcommand\JOBname{The Review of Financial Studies}
\newcommand\bookname{}

\newcommand\ourcurrentdirectory{}
\def\filecontents{\chaptername\space\thechapter}
\AtBeginDocument{\filename@parse{\jobname}
  \gdef\filename{\MakeLowercase{\filename@base}%
    \if\filename@ext\relax.tex%
    \else\MakeLowercase{\filename@ext}\fi}}
% calculate the time of day
\newcount\hours
\newcount\minutes
\hours=\time
\divide\hours by 60
\minutes=-\hours
\multiply\minutes by 60
\advance\minutes by \time
\def\timenow{\two@digits{\the\hours}:\two@digits{\the\minutes}}
%\font\slugfont=times at 6pt
\IfFileExists{crop.cfg}{}{%
  \renewcommand*\CROP@@info{%\slugfont%
    \lower 19\p@
    \hbox to \paperwidth{%
      \hskip 3mm
      %\scriptsize       % <--- NFSS font commands don't work here -- why?
      [\timenow\enskip\the\day/\the\month/\the\year\enskip RFS-\ourcurrentdirectory\filename]
      %\hfill
      %Job No:\space\Jobid
      \hfill%\@shortjname:
      \space%\@jname
      \hfill Page:\space\thepage\quad\@firstpage--\@lastpage%
      \hskip 13mm
      }}
  \renewcommand*\CROP@@ulc{%
    \begin{picture}(0,0)\unitlength 1mm\thinlines
      \put(-12.1,0){\line(1,0){9}}
      \put(0,12.1){\line(0,-1){9}}
      \put(10,6){\copyeditor}
      \put(100,6){\msc}
    \end{picture}}
  \renewcommand*\CROP@@urc{%
    \begin{picture}(0,0)\unitlength 1mm\thinlines
      \put(12.1,0){\line(-1,0){9}}
      \put(0,12.1){\line(0,-1){9}}
    \end{picture}}
  \renewcommand*\CROP@@llc{%
    \begin{picture}(0,0)\unitlength 1mm\thinlines
      \put(-12.1,0){\line(1,0){9}}
      \put(0,-12.1){\line(0,1){9}}
    \end{picture}}
  \renewcommand*\CROP@@lrc{%
    \begin{picture}(0,0)\unitlength 1mm\thinlines
      \put(12.1,0){\line(-1,0){9}}
      \put(0,-12.1){\line(0,1){9}}
    \end{picture}}
  \cropdef\CROP@@ulc\CROP@@urc\CROP@@llc\CROP@@lrc{cam}
  \renewcommand*\CROP@kernel{\color@setgroup
    \vbox to\z@{\vskip-1in
      \hb@xt@\z@{\hskip-1in
        \CROP@every
        \vbox to\paperheight{%
          \hb@xt@\paperwidth{%
            \CROP@ulc\CROP@uedge\CROP@urc}%
          \CROP@ledge
          \hb@xt@\paperwidth{%
            \setbox\z@\hbox{\CROP@info}%
            \ht\z@\z@ \dp\z@\z@ \wd\z@\z@ \box\z@
            \CROP@llc\hfil\CROP@lrc}}%
        \hss}%
      \vss}\color@endgroup}
  }

\if@cropmarkson \crop[cam] \fi

%%%%%%%%%b-KOO
\long\def\koo#1#2#3{\vbox to0pt{\hsize0pt\kern #2\hbox to0pt{\kern#1{#3}\hss}\vss}}
%
\long\def\zeroCC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLC#1{\vbox to0pt{\vss\hbox to0pt{\hss #1\hss}}}
\long\def\zeroUC#1{\vbox to0pt{\hbox to0pt{\hss #1\hss}\vss}}
\long\def\zeroLR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}}}
\long\def\zeroCR#1{\vbox to0pt{\vss\hbox to0pt{\hss #1}\vss}}
\long\def\zeroUR#1{\vbox to0pt{\hbox to0pt{\hss #1}\vss}}
\long\def\zeroLL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}}}
\long\def\zeroUL#1{\vbox to0pt{\hbox to0pt{#1\hss}\vss}}
\long\def\zeroCL#1{\vbox to0pt{\vss\hbox to0pt{#1\hss}\vss}}
\def\VRHDW#1#2#3{\vrule height #1 depth #2 width #3}
\def\HRHDW#1#2#3{\hrule height #1 depth #2 width #3}
\def\HD#1#2{\vrule height #1pt depth #2pt width 0pt\relax}
%
\newdimen\grid@sidemargin
\newdimen\grid@wd
\newdimen\grid@ht
\newdimen\grid@linewd\grid@linewd=0.1pt
\newdimen\grid@topofline
\grid@topofline\headheight%
\advance\grid@topofline\headsep%
\advance\grid@topofline.2\topskip%
%
\def\oddevenswitch{\ifodd\c@page \grid@sidemargin=\oddsidemargin\else\grid@sidemargin=\evensidemargin\fi}%
%
\def\DRAWGRID{%
\def\GRIDRULES{\oddevenswitch
\grid@wd=\textwidth \advance\grid@wd by 2\grid@linewd
\grid@ht=\textheight
\advance\grid@ht\headheight
\advance\grid@ht\headsep
\advance\grid@ht by 2\grid@linewd
\advance\grid@ht by -.25pt
\hbox to0pt{%
   \vbox to0bp{\kern-\headheight%
   \hbox to\textwidth{%
     \koo{-\grid@linewd}{0pt}{\zeroLL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \koo{-\grid@linewd}{\headheight}{\zeroLL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \koo{-\grid@linewd}{-\grid@linewd}{\zeroUL{\VRHDW{\grid@ht}{0pt}{\grid@linewd}}}%
     \koo{\textwidth}{-\grid@linewd}{\zeroUL{\VRHDW{\grid@ht}{0pt}{\grid@linewd}}}%
     \koo{-\grid@linewd}{\grid@ht}{\zeroUL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \koo{-\grid@linewd}{\grid@topofline}{\zeroUL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}%
     \hss}\vss}\hss}}%

\def\FIRSTLINEGRID{%
\ifdim\firstlinefixedpos>0pt%
\oddevenswitch%
\hbox to0pt{%
   \vbox to0bp{\kern240pt%
\hbox to\textwidth{\koo{-\grid@linewd}{10\baselineskip}{\zeroUL{\VRHDW{\grid@linewd}{0pt}{\grid@wd}}}}}}%
\fi}%
}%
%
\def\GRIDRULES{}
\def\FIRSTLINEGRID{}
%
%%%%%%%%%e-KOO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% author macros

\newenvironment{calc}
    {\begin{flushleft}\par\addvspace{6pt plus2pt}}
    {\par\addvspace{6pt plus2pt}\end{flushleft}}
\newcommand{\expr}[1]{\ensuremath{\quad#1}\\}
\newcommand{\expl}[2]{\ensuremath{#1\quad\langle\;}\textnormal{#2}\ensuremath{\;\rangle}\\}

\newenvironment{cproof}[1]
    {\noindent\normalfont{P{\fontsize{7}{12}\selectfont ROOF}}
    \begin{quote}}
    {\end{quote} \normalfont{E{\fontsize{7}{12}\selectfont ND OF PROOF}}}

\DeclareMathSizes{10}{10}{6.75}{5}
\DeclareMathSizes{8}{8}{5.5}{5}

\thickmuskip2mu
\thinmuskip1mu
\medmuskip=1.5mu

\lefthyphenmin=3
\righthyphenmin=3
\hyphenation{figure figures Figure table tables Table Section section Chapter chapter}

% Prevent Hyphenation
\hyphenpenalty=4000
\tolerance=1000
%
%
\frenchspacing
\vbadness=9999
\doublehyphendemerits=10000
\doublehyphendemerits 640000   % corresponds to badness 800
\finalhyphendemerits  1000000  % corresponds to badness 1000
%
\clubpenalty 10000% Disallow widows and orphans
\widowpenalty 10000% Disallow widows and orphans
\brokenpenalty 10000% do not allow hypen before pagebreak

\def\access#1{\gdef\@access{\accessfont #1}}\access{}
\def\accessfont{\fontfamily{\rmdefault}\fontsize{7}{8}\selectfont\fontshape{rmdefault}\selectfont}

%
\def\tablenumberfont{\reset@font\fontfamily{\rmdefault}\fontsize{7}{8}\fontseries{b}\selectfont}
\def\tablecaptionfont{\fontfamily{\rmdefault}\fontsize{7}{8}\fontseries{b}\selectfont\leftskip\tablecapleftskip\rightskip\tablecaprightskip}
\def\tablebodyfont{\fontfamily{\rmdefault}\fontsize{7}{8}\selectfont\leftskip\tableleftskip\rightskip\tablerightskip}
\def\tablefootfont{\fontfamily{\rmdefault}\fontsize{7}{8}\selectfont\leftskip\tablefootleftskip \rightskip\tablefootrightskip}
\def\TCHfont{\fontfamily{\rmdefault}\fontsize{7}{8}\selectfont}
\def\SCHfont{\fontfamily{\rmdefault}\fontsize{7}{8}\selectfont}
%
%
% TABLE
%
\newdimen\tablewd
\newdimen\tablewidth
\newdimen\captionwd
\newbox\tempbox
\newskip\tableleftskip%
\newskip\tablerightskip%
\newskip\tablecapleftskip%
\newskip\tablecaprightskip%
\newskip\tablefootleftskip%
\newskip\tablefootrightskip%
%
\newcolumntype{d}[1]{D{.}{.}{#1}}
\newcolumntype{m}[1]{M{.}{.}{#1}}
%
%
\def\TCH#1{\TCHfont #1} %Table col-heads
\def\SCH#1{\SCHfont #1} %Table col-heads
%
%
\long\def\tableparts#1#2#3{%%%%%%%%%%%%%%%%%%%%%%%%%%%%% #1-caption #2-body #3-footnote
    \setbox\tempbox\vbox{#1}                          %% to calculate width caption
    \addtocounter{table}{-1}                          %%
    \settowidth{\global\tablewd}{\tablebodyfont#2}    %% \captionwd - caption of width
    \tablewidth\hsize                                 %% \tablewd   - table width
    \advance\tablewidth-\tablewd
    \divide\tablewidth 2
    \global\tableleftskip\tablewidth
    \global\tablerightskip\tablewidth
    \ifdim\captionwd>\hsize
        \global\tablecapleftskip\tablewidth
        \global\tablecaprightskip\tablewidth %plus2fill
    \else
        \global\tablecapleftskip\tablewidth  %plus2fill
        \global\tablecaprightskip\tablewidth plus2fill
    \fi
    \global\tablefootleftskip\tablewidth
    \global\tablefootrightskip\tablewidth %plus2fill
    {#1 \par}%
    {\tablebodyfont #2\par}%
    {\tablefootfont #3\par}%
}
%
\newif\if@AProtate\@AProtatefalse
\def\AProtate{\global\@AProtatetrue}
\def\endAProtate{\global\@AProtatefalse}
\newdimen\rotdimen
\def\rotstart#1{\special{ps: gsave currentpoint currentpoint translate
        #1 neg exch neg exch translate}}
\def\rotfinish{\special{ps: currentpoint grestore moveto}}
\def\rotl#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
        \hbox to \rotdimen{\vbox to \wd#1{\vskip \wd#1
        \rotstart{-270 rotate}\box #1\vss}\hss}\rotfinish}
\def\rotr#1{\rotdimen=\ht#1\advance\rotdimen by \dp#1
        \hbox to \rotdimen{\vbox to \wd#1{\vskip \wd#1
        \rotstart{90 rotate}\box #1\vss}\hss}\rotfinish}
\def\Rotate#1{\setbox4=\hbox to\textheight{\vbox{\hsize\textheight
\begin{minipage}[t]{\textheight}
\begin{center}#1\end{center}
\end{minipage}}}\centerline{\rotl{4}}}
%


%%%%%%%%%%%%%%%%%%
%\def\colrule{\vrule height0pt depth5pt width0pt\\\myhline{1pt}\vrule height12pt depth0pt width0pt}%

\def\colrule{\noalign{\ifnum0=`}\fi
  \hrule \@height 2.3\p@ \@width \z@
  \hrule \@height .5\p@
  \hrule \@height 1.65\p@ \@width\z@
  \futurelet \@tempa\@xhline}

%%%%%%%%%%%%%

%\def\toprule{\noalign{\ifnum0=`}\fi
%  \hrule \@height .5\p@
%  \hrule \@height 5\p@ \@width \z@
%  \futurelet \@tempa\@xhline}
%
%\def\colrule{\noalign{\ifnum0=`}\fi
%  \hrule \@height 5\p@ \@width \z@
%  \hrule \@height .5\p@
%  \hrule \@height 5\p@ \@width\z@
%  \futurelet \@tempa\@xhline}
%
%\def\botrule{\noalign{\ifnum0=`}\fi
%  \hrule \@height 5.5\p@ \@width \z@
%  \hrule \@height .5\p@
%  \hrule \@height 5\p@ \@width\z@
%  \futurelet \@tempa\@xhline}

%\def\crules#1{\vrule height0pt depth5pt width0pt\\#1\vrule height11pt depth0pt width0pt}

\def\crules#1{\noalign{\hrule \@height 5.5\p@ \@width \z@}#1\noalign{\hrule \@height 5.5\p@ \@width \z@}}

\renewenvironment{thebibliography}{%
\section*{\fontsize{7}{12}\selectfont\bfseries\refname\vspace{-10\p@}}
\list{}{\fontsize{7}{12}\selectfont\topsep=0\p@\parsep=5\p@
\partopsep=0\p@\itemsep=1\p@\labelsep=0\p@\itemindent=0\p@
\labelwidth=0\p@\leftmargin=0\p@
\usecounter{enumi}
}\refssize\rm
\def\newblock{\ }
\sloppy\clubpenalty4000\widowpenalty4000
\sfcode`\.=1000\relax}{\endlist}

\AtEndDocument{%
\label{LastPage}}

\newcommand\etal{\emph{et~al.}}

\def\and{\\ }

\setlength{\footnotesep}{11\p@}

\pagestyle{RFS} \normalsize

\def\mathtight{%
\thickmuskip2mu \thinmuskip1mu \medmuskip=1.5mu\relax}

%%% Standard math spacing
\def\MathSpS{%
  \thinmuskip=3mu
  \medmuskip=4mu plus 2mu minus 4mu
  \thickmuskip=5mu plus 5mu\relax}
%%% With no extra declaration it is \MathSPS in effect

%%% Standard math spacing with less flexibility
\def\MathSpSS{%
  \thinmuskip=3mu
  \medmuskip=4mu plus 1.5mu minus 2mu
  \thickmuskip=5mu plus 2mu minus 1mu\relax}

%%% Tight math spacing
\def\MathSpT{%
  \thinmuskip=2mu
  \medmuskip=2.8mu plus 1.5mu minus 1.5mu
  \thickmuskip=3.7mu plus 2mu minus 1mu\relax}

%%% Very tight math spacing
\def\MathSpTT{%
  \thinmuskip=2mu
  \medmuskip=2mu plus 1.2mu minus 0.8mu
  \thickmuskip=2.6mu plus 1.5mu minus 1mu\relax}

\def\DS{\displaystyle}
\mathchardef\@m=1500   % adapted value
\mathtight

\jot=8pt

%%%%%%%%%%%%%%%%%%% ** LETTER SPACING & TRACKING %%%%%%%%%%%%%%%%%%
%
%
%\sodef\textso{}{-.015em}{.3em\@plus.08em\@minus.06em}%
%        {.55em\@plus.275em\@minus.183em}%
%
\def\dolist{\afterassignment\dodolist\let\next= }
\def\dodolist{\ifx\next\endlist \let\next\relax
   \else \\\let\next\dolist \fi
   \next}
%
\def\track#1#2{%
\def\\{\expandafter\if\space\next\setbox0=\hbox{\ }%
  \else \setbox0=\hbox{\next}\fi%
     \box0\kern#1}%
\leavevmode\hbox{\dolist#2\endlist\unkern}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\x{\end{document}}
\def\n{\nobreak}
\def\h{\hbox}
\def\vs#1{\vadjust{\vspace{#1pt}}}
\def\tra#1{\spaceskip 0.#1em plus 0.15em minus 0.09em\relax}%
\def\rull#1{\vspace*{#1pt}\noindent$\hrulefill$}
\def\vvp{\vadjust{\vfill\pagebreak}}
\def\vpb{\vadjust{\pagebreak}}
\def\vvsp#1{\vadjust{\vspace{#1pt}\pagebreak}}
\def\vvSP#1{\HD{0}{#1}\pagebreak}
\def\HD#1#2{\vrule height #1pt depth #2pt width 0pt\relax}
\def\p#1{\phantom{#1}}

\newcolumntype{d}[1]{D{.}{.}{#1}}
\newcolumntype{m}[1]{D{,}{,}{#1}}

%\newcommand{\up}{\HD{8}{0}}
%\newcommand{\down}{\HD{0}{8}}
%\newcommand{\Ndown}{\HD{0}{6}}
\def\mcc#1{\multicolumn{1}{c}{#1}}
\def\mcl#1{\multicolumn{1}{l}{#1}}
\def\mcr#1{\multicolumn{1}{r}{#1}}
\def\MC#1#2{\multicolumn{#1}{c}{#2}}
\def\ML#1#2{\multicolumn{#1}{l}{#2}}
\def\MR#1#2{\multicolumn{#1}{r}{#2}}
\def\mcct#1{\multicolumn{2}{c}{#1}}
\def\mclt#1{\multicolumn{2}{l}{#1}}


\sloppy

\endinput

%\usepackage{lineno}
%\linenumbers
%\pagewiselinenumbers
%%
%% End of file `report.cls'.
