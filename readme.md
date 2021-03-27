# 常州大学毕业设计$\LaTeX$版
此项目包含`cczu.cls`，`demo.tex`，`demo.pdf`三个文件。
其中`cczu.cls`为作者设计的模板文件，`demo.tex`和`demo.pdf`为用于演示的$\LaTeX$文件和PDF文件。

此文件适用于常州大学学生，使用时需做以下工作：
1. 下载`cczu.cls`
2. 新建`[毕业设计文件].tex`，并在第一行写下如下语句：
```latex
\documentclass{cczu}
```
即可使用此文件编写毕业设计。
使用细节如下所述。
# 封面元素
本项目包含10个封面元素，分别为
```latex
\stuid{123456789}
\graduateyear{2021}% 届
\ctitle{关于如何暴富的真理讨论}% 中文题目
\etitle{Truth discussion on how to get rich}% 英文题目
\student{比尔·巴菲特}% 学生
\college{计算机和经济学院}% 学院
\grade{计量经济学171}% 专业班级
\teacher{沃伦·盖茨}% 校内指导老师
\job{教授}% 专业技术职务
\graduatedate{二〇二一}{三}% 年月
```
设计好封面元素之后，在document环境里使用`\cczupage`即可显示封面。
显示效果如`demo.pdf`封面所示。
# 摘要
使用`cabstract`和`eabstract`环境表示摘要环境，并在内部分别使用`\ckeywords`和`\ekeywords`编写关键词，如下所示：
```latex
% 中文摘要
\begin{cabstract}
	这是摘要
	\ckeywords{中文关键词}
\end{cabstract}
% 英文摘要
\begin{eabstract}
	this is english abstract.
	\ekeywords{english keywords}
\end{eabstract}
```
使用摘要前需要在前面加上`\frontpage`命令表示这是前言。
# 章节元素
使用以下命令显示章节，均会自动编号，并自动加载之目录文件中：
```latex
\section{节名称}
\subsection{小节名称}
\subsubsection{子节名称}
```
在正文中使用章节命令时，需要在第一个`\section`前面使用`\mainpage`命令表示这是正文。
# 目录
使用`\ctableofcontents`命令加载目录。
# 致谢
使用`\thank`命令加载致谢环境。
# 附录
使用`\cappendix`命令加载附录环境，在此之后可以使用`\cpart`命令表示附录A~Z，并对章节编号进行了重定义。
使用示例如下所示：
```latex
% 附录
\cappendix
\cpart
\section{A}
\subsection{B}
测试
\cpart
\section{A}
\subsection{B}
\end{document}
```