\ProvidesClass{cczu}[2021/3/27 v1.0]

\LoadClass[a4paper,heading=true,zihao=-4]{ctexart}

\setcounter{secnumdepth}{4}

% 修改标题格式
\ctexset{
    part={
            beforeskip={1ex},
            afterskip={1ex},
            name={},
            number={},
            format={\zihao{4}\bfseries\centering},
            tocline={#2}
        },
    section={
      beforeskip={0.5ex},
      afterskip={0.5ex},
      format={\zihao{3}\bfseries},
      tocline={\CTEXnumberline{#1}.#2}
     },% 章标题：宋体，三号，粗体，段前、段后 0.5 行，靠左顶格
    subsection={
            beforeskip={0.5ex},
            afterskip={0.5ex},
            format={\zihao{4}\bfseries}
        },% 节标题：宋体，四号，粗体，段前段后 0.5 行，靠左顶格
    subsubsection={
            beforeskip={0.5ex},
            afterskip={0.5ex},
            format={\bfseries}
        },% 小节标题：宋体，小四号，粗体，段前段后 0.5 行，靠左顶格
}

% 设置左、右、下边距为25mm，上边距为28cm
\RequirePackage[left=25mm,right=25mm,top=28mm,bottom=25mm]{geometry}

% 行间距：固定值18磅，段前和段后均为0磅
\setlength{\baselineskip}{18pt}
\setlength{\parskip}{0pt}

% 设置中文默认字体为宋体，西文、数字等符号均采用Times New Roman字体
\RequirePackage{xeCJK}
\setmainfont{Times New Roman}
\setCJKmainfont[AutoFakeBold]{SimSun}

% 设置目录
% \RequirePackage{tocbibind}
\RequirePackage{titletoc}
\RequirePackage{tocloft}
% 修改目录格式为居中、宋体、三号、粗体、字间空两格，且下方空两行
\renewcommand{\cfttoctitlefont}{\hfill\zihao{3}\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftaftertoctitleskip}{3em}
\renewcommand{\contentsname}{目\qquad 录}
\titlecontents{part}[0em]{}{\contentslabel{1em}}{}{\titlerule*{$\cdot$}\contentspage}
\titlecontents{section}[1em]{}{\contentslabel{1em}}{}{\titlerule*{$\cdot$}\contentspage}
\titlecontents{subsection}[3em]{}{\contentslabel{2em}}{}{\titlerule*{$\cdot$}\contentspage}
\titlecontents{subsubsection}[5em]{}{\contentslabel{3em}}{}{\titlerule*{$\cdot$}\contentspage}
\newcommand{\ctableofcontents}{\addcontentsline{toc}{part}{目录}\tableofcontents\newpage}

\RequirePackage{float}
% 防止图片溢出
\RequirePackage{graphicx}
\def\maxwidth{
    \ifdim\Gin@nat@width>\linewidth\linewidth
    \else\Gin@nat@width
    \fi
}
\def\maxheight{
    \ifdim\Gin@nat@height>\textheight\textheight
    \else\Gin@nat@height
    \fi
}
\setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}

% 修改图表标题格式为宋体、五号、加粗、居中
\RequirePackage[justification=centering,font={small,bf},aboveskip=\parskip,belowskip=\parskip]{caption}

% 设置页眉、页脚
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{常州大学本科生毕业设计}
\fancyfoot[C]{\thepage}
\fancypagestyle{plain}{\pagestyle{fancy}}
\newcommand{\frontpage}{\pagenumbering{Roman}}
\newcommand{\mainpage}{
    \pagenumbering{arabic}
    \fancyfoot[C]{第\thepage 页，共\pageref{LastPage} 页}
}

% 设置列表格式
\RequirePackage{enumitem}
\setenumerate{itemsep=0pt,topsep=0pt,partopsep=0pt,parsep=0pt}
\setitemize{itemsep=0pt,topsep=0pt,partopsep=0pt,parsep=0pt}
\setlist{itemsep=0pt,topsep=0pt,partopsep=0pt,parsep=0pt}

% 设置Python语法高亮
\RequirePackage{pythonhighlight}

% 设置表格
\RequirePackage{tabularx}

% 设置数学字体
\RequirePackage{amsfonts,amssymb}

% 设置参考文献，格式：GB/T 7714-2015版本
\RequirePackage{gbt7714}
\bibliographystyle{gbt7714-numerical}

\makeatletter
\newcommand{\stuid}[1]{\def\@stuid{#1}}% 学号
\newcommand{\graduateyear}[1]{\def\@graduateyear{#1}} % 届
\newcommand{\ctitle}[1]{\def\@ctitle{#1}} % 中文题目
\newcommand{\etitle}[1]{\def\@etitle{#1}} % 英文题目
\newcommand{\student}[1]{\def\@student{#1}} % 学生
\newcommand{\college}[1]{\def\@college{#1}} % 学院
\newcommand{\grade}[1]{\def\@grade{#1}} % 专业班级
\newcommand{\teacher}[1]{\def\@teacher{#1}} % 校内指导老师
\newcommand{\job}[1]{\def\@job{#1}} % 专业技术职务
\newcommand{\graduatedate}[2]{\def\@graduatedate{#1 年#2 月}} % 年月
% 封面
\newcommand{\cczupage}{
    \begin{titlepage}
        {\bfseries
            \zihao{5}\rightline{学号：\underline{\@stuid}}\vspace{0.5ex}
            \begin{center}
                \zihao{0} 常~~州~~大~~学\vspace{0.5ex}\\
                \zihao{0} 毕业设计\vspace{0.5ex}\\
                \zihao{3} (\underline{\@graduateyear}届)
            \end{center}
            \vspace{10em}
            \begin{table}[H]
                \zihao{4}\bfseries\linespread{2}\selectfont
                \begin{tabular}{ll}
                    题\qquad 目 & \underline{\makebox[13.3cm][c]{\@ctitle}}  \\
                    学\qquad 生 & \underline{\makebox[13.3cm][c]{\@student}} \\
                \end{tabular}
                \begin{tabular}{ll}
                    学\qquad 院\quad\underline{\makebox[5.2cm][c]{\@college}}  & 专业班级\quad\underline{\makebox[5.2cm][c]{\@grade}}   \\
                    校内指导教师\quad\underline{\makebox[4.2cm][c]{\@teacher}} & 专业技术职务\quad\underline{\makebox[4.2cm][c]{\@job}} \\
                \end{tabular}
            \end{table}
            \vspace*{\fill}\zihao{4}\bfseries\centerline{\@graduatedate}
        }
    \end{titlepage}
}

% 关键词
\newcommand{\ckeywords}[1]{\def\@ckeywords{#1}}
\newcommand{\ekeywords}[1]{\def\@ekeywords{#1}}

% 中文摘要
\newenvironment{cabstract}{
    \part[摘要]{\zihao{3}\@ctitle}
    \noindent\textbf{摘\quad 要：}
}{\\\textbf{关键词：}\@ckeywords\newpage}

% 英文摘要
\newenvironment{eabstract}{
    \part[Abstract]{\zihao{3}\@etitle}
    \noindent\textbf{Abstract：}
}{\\\textbf{Key words：}\@ekeywords\newpage}
\makeatother

% 致谢
\newcommand{\thank}{\newpage\part[致谢]{致\quad 谢}}

% 附录
\RequirePackage{titlesec}
\newcommand{\cappendix}{
    \setcounter{part}{0}
    \setcounter{section}{0}
    \renewcommand{\thepart}{\Alph{part}}
    \renewcommand{\thesection}{\thepart~\arabic{section}}
    \renewcommand{\thefigure}{图~\thepart\arabic{figure}}
    \renewcommand{\thetable}{表~\thepart\arabic{table}}
    \titlecontents{section}[3em]{}{\contentslabel{2em}}{}{\titlerule*{$\cdot$}\contentspage}
    \titlecontents{subsection}[5em]{}{\contentslabel{2.5em}}{}{\titlerule*{$\cdot$}\contentspage}
    \titlecontents{subsubsection}[7em]{}{\contentslabel{3.5em}}{}{\titlerule*{$\cdot$}\contentspage}
    \titleformat{\section}{\zihao{3}\bf}{\thepart\arabic{section}}{0.5em}{}
    \newcommand{\cpart}{\newpage\part[附录\thepart]{附\quad 录\quad\thepart}}
}