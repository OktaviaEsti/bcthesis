\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{UGMThesis}
              [2013/7/16 v0.1
			  UGM Thesis Class]
%% Based on Report class	
		  
\LoadClass[12pt,a4paper]{report}

%% =================================
%% Package Import

%%	Ukuran Margin UGM
\RequirePackage[a4paper, top=25mm, bottom=25mm, left=25mm, right=20mm]{geometry}

%% Penggunaan Huruf Times New Roman
\usepackage{savesym}
\usepackage{amsmath}
\savesymbol{iint}
\usepackage{mathptmx}
\restoresymbol{TXF}{iint}

%% Pengaturan TOC, LOF dan LOT
\usepackage%[subfigure]
		{tocloft}
\usepackage{titletoc}

%% Pengaturan Spasi
\usepackage{setspace}

%% Underline
\usepackage[normalem]{ulem}

%% Bookmarks
\usepackage{hyperref}

%% Array Package
\usepackage{array}

%% Menghitung Total Halaman
\usepackage{lastpage}

%% Pengaturan Header dan Footer
\usepackage{fancyhdr}

\usepackage[table,xcdraw]{xcolor} %% \usepackage{xcolor}

% BUAT BIKIN subsubsection
\setcounter{tocdepth}{4}
\setcounter{secnumdepth}{4}
% \setcounter{lofdepth}{2} % ditambahi buat mendukung package subcaption

%Bikin Daftar Notasi simbol
\usepackage[sort=use]{glossaries}

%% =================================
%% Untuk Bahasa
\RequirePackage[bahasa]{babel}

%% Untuk Mengganti Gaya Judul Bahasa
\RequirePackage{titlesec}

%% Untuk Menambahkan toc ke toc
\RequirePackage{tocbibind}

%% =================================
%% Some Customizations

%% Standarize Underline
\setlength{\ULdepth}{3pt}
\renewcommand{\ULthickness}{1.5pt}

%% Untuk Import Gambar
\RequirePackage{graphicx}
\graphicspath{ {../../fig/} }
\usepackage[export]{adjustbox}

%% Numbering : Equation
\numberwithin{equation}{chapter}
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

%% Numbering : Figure
\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}

%% Numbering : Table
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}

%% Caption : algoritma
\RequirePackage{algorithm}
\renewcommand{\ALG@name}{Algoritme}

%% Table Command
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{M}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{D}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

%% Pengaturan Header dan Footer
\fancypagestyle{fancymod}
{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot[R]{\thepage}
}

%% Redefine the Plain Page Style
\fancypagestyle{plain}
{
	\fancyhf{}
	\renewcommand{\headrulewidth}{0pt}
	\fancyfoot[R]{\thepage}
}

%% Pengaturan Daftar Simbol dan Notasi
\usepackage{glossaries}
% \usepackage[doublespacing]{setspace}

\makeglossaries

\newglossarystyle{ipa}
{%
  % longtable with three columns:
  \renewenvironment{theglossary}%
     {\begin{longtable}{p{5cm}p{8cm}p{2.5cm}}}%
     {\end{longtable}}%
  % no header:
  \renewcommand*{\glossaryheader}{
    %
    % Requires booktabs
    %\toprule%
    \textbf{Simbol} & \textbf{Deskripsi} & \textbf{Halaman} \tabularnewline
  }%
  % no group headings:
  \renewcommand*{\glsgroupheading}[1]{}%
  % main (level 0) entries displayed in a row
  \renewcommand{\glossentry}[2]{%
    % name in bold:
    \glsentryitem{##1}\glstarget{##1}{\textbf{\glossentryname{##1}}} &
    % symbol in square brackets
    \glossentrydesc{##1}&
    % description in italic
    ##2 \tabularnewline
  }%
  % sub-entries (same as main)
  \renewcommand{\subglossentry}[3]{\glossentry{##2}{##3}}%
  % blank row between groups if nogroupskip=false
  \ifglsnogroupskip
    \renewcommand*{\glsgroupskip}{}%
  \else
    \renewcommand*{\glsgroupskip}{ & & \tabularnewline}%
  \fi
}

\setglossarystyle{ipa}





%% =================================
%% Pengaturan di TOC (Table of Content)

%% Pengaturan jarak antara tulisan ''CHAPTER x'' dgn nama chapter di TOC
%% (CHAPTER <No> <\cftchapnumwidth> <Name>)
%\renewcommand{\cftchapnumwidth}{7em}

\renewcommand\cfttoctitlefont{\vspace{-0.8cm}\large\bfseries\centering\MakeUppercase}
\renewcommand\cftloftitlefont{\vspace{-0.8cm}\hspace{.1cm}\large\bfseries\centering\MakeUppercase}
\renewcommand\cftlottitlefont{\vspace{-0.8cm}\hspace{.1cm}\large\bfseries\centering\MakeUppercase}

\dottedcontents{chapter}[1.5cm]{}{1.5cm}{0.3pc}
\dottedcontents{section}[2.25cm]{}{.75cm}{0.3pc}
\dottedcontents{subsection}[3.25cm]{}{1cm}{0.3pc}
\dottedcontents{subsubsection}[4.25cm]{}{1.25cm}{0.3pc}
\dottedcontents{paragraph}[5.25cm]{}{1.5cm}{0.3pc}

% Pengaturan Posisi Judul Chapter
\titlespacing*{\chapter}{0pt}{-2.5em}{20pt}

%% =================================
%% Pengaturan di LOF (List of Figure) dan LOT (List of Table)

\renewcommand{\cftfigfont}{Gambar }
\renewcommand{\cfttabfont}{Tabel }
\setlength{\cftfignumwidth}{1.1cm}
\setlength{\cfttabnumwidth}{1.1cm}
\renewcommand\cftdotsep{0.3}
\renewcommand{\cftfigleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cfttableader}{\cftdotfill{\cftdotsep}}
    
%% ==================================
%% Pembuatan Command

%% Judul Bahasa Indonesia
\newcommand\judul[1]{\renewcommand\@judul{#1}}
\newcommand\@judul{\@latex@error{"Judul Capstone" belum lengkap}\@ehc}

%% Nomor Dokumen
\newcommand\NoDok[1]{\renewcommand\@NoDok{#1}}
\newcommand\@NoDok{\@latex@error{Data "Nomor Dokumen" belum diinputkan}\@ehc}

%% Nomor Revisi
\newcommand\NoRev[1]{\renewcommand\@NoRev{#1}}
\newcommand\@NoRev{\@latex@error{Data "Nomor Revisi" belum diinputkan}\@ehc}

%% Data Mahasiswa Capstone
\newcommand\MHS[4]{\renewcommand\@MHSNama{#1}
\renewcommand\@MHSNIM{#2}
\renewcommand\@MHSProdiKonsentrasi{#3}
\renewcommand\@MHSEmail{#4}}
\newcommand\@MHSNama{\@latex@error{Data "Mahasiswa" belum lengkap}\@ehc}
\newcommand\@MHSNIM{\@latex@error{Data "Mahasiswa" belum lengkap}\@ehc}
\newcommand\@MHSProdiKonsentrasi{\@latex@error{Data "Mahasiswa" belum lengkap}\@ehc}
\newcommand\@MHSEmail{\@latex@error{Data "Mahasiswa" belum lengkap}\@ehc}

%% Data Dosen Pembimbing 1
\newcommand\DPA[2]{\renewcommand\@DPANama{#1}
\renewcommand\@DPANIP{#2}}
\newcommand\@DPANama{\@latex@error{Data "Dosen Pembimbing 1" belum lengkap}\@ehc}
\newcommand\@DPANIP{\@latex@error{Data "Dosen Pembimbing 1" belum lengkap}\@ehc}

%% Data Dosen Pembimbing 2
\newcommand\DPB[2]{\renewcommand\@DPBNama{#1}
\renewcommand\@DPBNIP{#2}}
\newcommand\@DPBNama{\@latex@error{Data "Dosen Pembimbing 2" belum lengkap}\@ehc}
\newcommand\@DPBNIP{\@latex@error{Data "Dosen Pembimbing 2" belum lengkap}\@ehc}

%% Tempat Pelaksanaan
\newcommand\Tempat[1]{\renewcommand\@Tempat{#1}}
\newcommand\@Tempat{\@latex@error{Data "Tempat Pelaksanaan" belum diinputkan}\@ehc}

%% Memperbarui Command "maketitle" untuk Membuat Halaman Judul hingga Catatan Revisi Dokumen 
\renewcommand\maketitle{%
    % Pengaturan Caption Gambar, Tabel dan Algoritme
    \captionsetup[figure]{labelfont={default},labelformat={default},labelsep=period,name={Gambar }}
    \captionsetup[table]{labelfont={default},labelformat={default},labelsep=period,name={Tabel }}
    \captionsetup[algorithm]{labelfont={bf},labelformat={default},labelsep=period,name={Algoritme }}
    
 	\let\footnotesize\normalsize
	\let\footnoterule\relax
	\let\footnote\thanks
	
	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
  
	%% Setting Halaman Baru : Halaman Judul
	\clearpage
	\frontmatters
	\begin{center}%
		{\Large {\MakeUppercase{\textbf{\@judul}}} \par}%
		\vskip 5mm
		{\Large {\textbf{DOKUMEN C-501}} \par}%
		\vskip 20mm%
		
		\includegraphics[width=85mm]{Logo_UGM.pdf}
		\vskip 15mm%
		
		\singlespacing
		{\large {\textbf{Disusun Oleh :}} \par}%
		\vskip 5mm%
		
		\begin{table}[!ht]
			\begin{center}
			\begin{tabular}{l C{1cm} l}
				{\large {\textbf{\@MHSNama}} }	&	{}	&
				{\large {\textbf{\@MHSNIM}} }		\\
			\end{tabular}
			\end{center}
		\end{table}
		\vskip 25mm%
		
		\onehalfspacing
		{\large {\textbf{DOKUMENTASI SKRIPSI \textit{CAPSTONE PROJECT}}} \par}%
		{\large {\textbf{PROGRAM STUDI \MakeUppercase{\@MHSProdiKonsentrasi}}} \par}%
		{\large {\textbf{DEPARTEMEN TEKNIK ELEKTRO DAN TEKNOLOGI INFORMASI}} \par}%
		{\large {\textbf{FAKULTAS TEKNIK UNIVERSITAS GADJAH MADA}} \par}%
		{\large {\textbf{\number\year}}}%
	\end{center}\par
  	
  	%% Setting Halaman Baru : Halaman Pengesahan
	\newpage
    
  	
  	\clearpage
  	\preface
  	\setcounter{page}{2}%
	\addcontentsline{toc}{chapter}{HALAMAN PENGESAHAN}
  	\includepdf[pages={1}]{acc.pdf}

	% \setcounter{page}{2}%
	% \begin{center}
	% 	\begin{small}
	% 		{\large {\textbf{HALAMAN PENGESAHAN}} \par}%
    % 		\vskip 2em%
    		
    % 		\begin{table}[!ht]
	% 		\begin{center}
	% 		\setlength{\tabcolsep}{2pt}	% Control the Horizontal Cell Margin
	% 		\setlength{\extrarowheight}{1.5mm}
	% 		\begin{tabular}{|C{0.6cm} L{5.0cm} C{0.2cm} p{10.0cm}|}
	% 			\hline
	% 				{1.}								&
	% 				{USULAN JUDUL SKRIPSI}				&
	% 				{:}									&
	% 				{\@judul}							\\
					
	% 				{ }									&
	% 				{ }									&
	% 				{:}									&
	% 				{\textit{\@title}}					\\
	% 			\hline
	% 				{2.}								&
	% 				{JENIS DOKUMEN}						&
	% 				{:}									&
	% 				{IMPLEMENTASI SOLUSI}\\
	% 			\hline
	% 				{3.}								&
	% 				{KODE DOKUMEN}						&
	% 				{:}									&
	% 				{C-501}							    \\
	% 			\hline
	% 				{4.}								&
	% 				{NOMOR DOKUMEN}						&
	% 				{:}									&
	% 				{C-501-\@NoDok}							\\
	% 			\hline
	% 				{5.}								&
	% 				{NOMOR REVISI}						&
	% 				{:}									&
	% 				{\@NoRev}							\\
	% 			\hline
	% 				{6.}								&
	% 				{TANGGAL PENERBITAN}				&
	% 				{:}									&
	% 				{\protect\foreignlanguage{bahasa}
	% 				{\today}}  \\
	% 			\hline
	% 				{7.}								&
	% 				{DATA MAHASISWA}					&
	% 				{ }									&
	% 				{\hspace{7.0cm} Tanda Tangan :
	% 				% \begin{tikzpicture}[remember picture,overlay]
	% 				% 	\node[xshift=-4cm,yshift=-12cm] at (current page.north east){%
	% 				% 	\includegraphics[width=6cm]{ttd_esti.png}};
	% 				% \end{tikzpicture}
					
					
	% 				}		\\
					
	% 				{ }									&
	% 				{a. Nama Lengkap}					&
	% 				{:}									&
	% 				{\@MHSNama}						\\
					
	% 				{ }									&
	% 				{b. NIM}							&
	% 				{:}									&
	% 				{\@MHSNIM}						\\
					
	% 				{ }									&
	% 				{c. Prodi}				&
	% 				{:}									&
	% 				{\@MHSProdiKonsentrasi}			\\
					
	% 				{ }									&
	% 				{d. Email}							&
	% 				{:}									&
	% 				{\@MHSEmail}						\\
	% 			\hline
	% 				{8.}								&
	% 				{DOSEN PEMBIMBING I}				&
	% 				{ }									&
	% 				{\hspace{7.0cm} Tanda Tangan :}		\\
					
	% 				{ }									&
	% 				{a. Nama Lengkap}					&
	% 				{:}									&
	% 				{\@DPANama}							\\
					
	% 				{ }									&
	% 				{b. NIP}							&
	% 				{:}									&
	% 				{\@DPANIP}							\\

	% 				{}									&
	% 				{}							&
	% 				{}									&
	% 				{}							\\

	% 				{}									&
	% 				{}							&
	% 				{}									&
	% 				{}							\\
					

	% 			\hline
	% 				{9.}								&
	% 				{DOSEN PEMBIMBING II}				&
	% 				{ }									&
	% 				{\hspace{7.0cm} Tanda Tangan :}		\\
					
	% 				{ }									&
	% 				{a. Nama Lengkap}					&
	% 				{:}									&
	% 				{\@DPBNama}							\\
					
	% 				{ }									&
	% 				{b. NIP}							&
	% 				{:}									&
	% 				{\@DPBNIP}							\\

	% 				{}									&
	% 				{}							&
	% 				{}									&
	% 				{}							\\

	% 				{}									&
	% 				{}							&
	% 				{}									&
	% 				{}							\\
	% 			\hline
	% 				{10.}								&
	% 				{TEMPAT PELAKSANAAN}				&
	% 				{:}									&
	% 				{\@Tempat}							\\
	% 			\hline
	% 				{11.}								&
	% 				{JUMLAH HALAMAN}					&
	% 				{:}									&
	% 				{\pageref{LastPage}}				\\
	% 			\hline
	% 		\end{tabular}
	% 		\end{center}
	% 		\end{table}		
	% 	\end{small}
	% \end{center} \par
	
	%% Setting Halaman Baru : Bukti Bebas Plagiasi
	\newpage
	\addcontentsline{toc}{chapter}{BUKTI BEBAS PLAGIASI}
	\begin{center}%
	    {\large {\textbf{BUKTI BEBAS PLAGIASI}} \par}%
	    
		\vskip 10mm%
		
		\includegraphics[width=\textwidth, frame]{similiaritas.pdf}%
	\end{center} \par
	
	% Pengaturan Judul TOC, LOF dan LOT
    \renewcommand{\contentsname}{{\uppercase{Daftar Isi}}}
    \renewcommand{\listfigurename}{{\uppercase{Daftar Gambar}}}
    \renewcommand{\listtablename}{{\uppercase{Daftar Tabel}}}
	% \renewcommand{\clearpage}{}
    
    %% Mengganti Nama Chapter untuk Daftar Pustaka
    \renewcommand\bibname{REFERENSI}
    
	%% Setting Halaman Baru : Daftar Isi, Daftar Gambar, dan Daftar Tabel
	\onehalfspacing{
    	% Daftar Isi
    	\newpage
    	\chapter*{ }
    	\centering
    	\vspace*{-5.5em}	%% Pengaturan jarak vertikal judul TOC dari atas kertas
    	\tableofcontents
    
    	% Daftar Gambar
    	\newpage
    	\chapter*{ }
    	\centering
    	\vspace*{-5.5em}	%% Pengaturan jarak vertikal judul LOF dari atas kertas
    	\listoffigures
    
    	% Daftar Tabel
    	\newpage
    	\chapter*{ }
    	\centering
    	\vspace*{-5.5em}	%% Pengaturan jarak vertikal judul LOT dari atas kertas
    	\listoftables

		% Daftar Notasi dan Simbol
		\newpage
		\addcontentsline{toc}{chapter}{DAFTAR SIMBOL DAN NOTASI}
    	% \chapter*{ }
    	% \centering
    	% \vspace*{-5.5em}	%% Pengaturan jarak vertikal judul LOT dari atas kertas
		\vskip 10mm%
		\begin{center}%
			{\large {\textbf{DAFTAR SIMBOL DAN NOTASI}} \par}%
			
			\vskip 10mm%
			
			\input{Glossarium_notasi.tex}
			\renewcommand{\glossarysection}[2][]{} %hapus judul 
			\setlength{\glsdescwidth}{10 cm}
			\doublespacing
			\printglossary%[title={DAFTAR SIMBOL DAN NOTASI}]
		\end{center} \par
		% \input{Glossarium_notasi.tex}
		% \printglossary[title={DAFTAR SIMBOL DAN NOTASI}]
		
		

    }
    
    % Setting Halaman Baru :  Catatan Revisi Dokumen
    \begin{revisi}
        \noindent
    	\begin{longtable}{|D{1.5cm} | D{2.5cm} | M{11cm}|}
    		\hline
    			\textbf{VERSI}	& 
    			\textbf{TANGGAL} &
    			\multicolumn{1}{|D{11cm}|}{\textbf{PERBAIKAN}} \\
    		\hline
    		    % Catatan Revisi Ke-0
    			\input{../Catatan_Revisi/Revisi_00.tex}	% Catatan Pembuatan Dokumen
                \\
                \hline
				
    			%
    			% Catatan Revisi Ke-1 dan seterusnya
    			\ifnum\@NoRev>0
    			    \input{../Catatan_Revisi/Revisi_01.tex}	% Rincian Perbaikan Versi ke-1
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>1
    			    \input{../Catatan_Revisi/Revisi_02.tex}	% Rincian Perbaikan Versi ke-2
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>2
    			    \input{../Catatan_Revisi/Revisi_03.tex}	% Rincian Perbaikan Versi ke-3
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>3
    			    \input{../Catatan_Revisi/Revisi_04.tex}	% Rincian Perbaikan Versi ke-4
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>4
    			    \input{../Catatan_Revisi/Revisi_05.tex}	% Rincian Perbaikan Versi ke-5
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>5
    			    \input{../Catatan_Revisi/Revisi_06.tex}	% Rincian Perbaikan Versi ke-6
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>6
    			    \input{../Catatan_Revisi/Revisi_07.tex}	% Rincian Perbaikan Versi ke-7
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>7
    			    \input{../Catatan_Revisi/Revisi_08.tex}	% Rincian Perbaikan Versi ke-8
                    \\
                    \hline
    			\fi
    			\ifnum\@NoRev>8
    			    \input{../Catatan_Revisi/Revisi_09.tex}	% Rincian Perbaikan Versi ke-9
                    \\
                    \hline
    			\fi
    	\end{longtable}	
    \end{revisi}
    
    % Setting Halaman Baru : Intisari
    \begin{intisari}
        \setlength{\parindent}{20pt}
    	\input{Intisari.tex}
    \end{intisari}
    
    % Setting Halaman Baru : Ringkasan Eksekutif
    \begin{ringkasan}
        \setlength{\parindent}{20pt}
    	\input{Ringkasan_Eksekutif.tex}
    \end{ringkasan}
    
    % Memulai Style Page Numbering yang Baru
    \clearpage
    \contents
}

%% Setting Environment Baru : Catatan Revisi Dokumen
\newenvironment{revisi}{%
	\newpage
	\addcontentsline{toc}{chapter}{CATATAN REVISI DOKUMEN}
	\@beginparpenalty\@lowpenalty
	\begin{center}%
		\bfseries \large\textbf{CATATAN REVISI DOKUMEN}
		\@endparpenalty\@M
	\end{center}}%
{\par\vfil\null}

%% Setting Environment Baru : Intisari
\newenvironment{intisari}{%
	\newpage
	\addcontentsline{toc}{chapter}{INTISARI}
	\singlespacing
	\@beginparpenalty\@lowpenalty
	\begin{center}%
		\bfseries \large\textbf{INTISARI}
		\@endparpenalty\@M
	\end{center}}%
{\par\vfil\null}

%% Setting Enviroment Baru : Ringkasan Eksekutif
\newenvironment{ringkasan}{%
	\newpage
	\addcontentsline{toc}{chapter}{RINGKASAN EKSEKUTIF}
	\singlespacing
	\@beginparpenalty\@lowpenalty
	\begin{center}%
		\bfseries \large\textbf{RINGKASAN EKSEKUTIF}
		\@endparpenalty\@M
	\end{center}}%
{\par\vfil\null}

%% Mengganti Gaya Penomoran Bab dan Subbab 
\renewcommand{\thechapter}{BAB \arabic{chapter}}
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}

%% Mengganti Setting Page Numbering
% Menghilangkan Nomor Halaman pada Halaman Cover
\newcommand\frontmatters{\pagestyle{empty}}
% Memulai Nomor Halaman pada Halaman Pengesahan
\newcommand\preface{\pagestyle{fancymod} \pagenumbering{roman} \doublespacing}
% Memulai Nomor Halaman pada Isi Laporan
\newcommand\contents{\pagestyle{fancymod} \pagenumbering{arabic} \onehalfspacing}

%% Mengganti Gaya Titling Bab dan Subbab
\titleformat{\chapter}[block]
{\bfseries\filcenter\large}{\thechapter}{0.5em}{\\ \MakeUppercase}
\titleformat{\section}[hang]
{\bfseries}{\thesection}{0.5em}{}
\titleformat{\subsection}[hang]
{\bfseries}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}[hang]
{\bfseries}{\thesubsubsection}{0.5em}{}
\titleformat{\paragraph}[hang]
{\bfseries}{\theparagraph}{0.5em}{}