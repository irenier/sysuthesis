# `sysuthesis`: 中山大学学位论文 LaTeX 模板

[![build status](https://github.com/irenier/sysuthesis/actions/workflows/build.yml/badge.svg)](https://github.com/irenier/sysuthesis/actions/workflows/build.yml)
[![GitHub release](https://img.shields.io/github/release/irenier/sysuthesis/all.svg)](https://github.com/irenier/sysuthesis/releases/latest)
[![CTAN](https://img.shields.io/ctan/v/sysuthesis.svg)](https://www.ctan.org/pkg/sysuthesis)
[![Overleaf](https://img.shields.io/badge/Overleaf-brightgreen)](https://www.overleaf.com/latex/templates/sysuthesis/sghrrhbdvjbd)
[![TeXPage](https://img.shields.io/badge/TeXPage-steelblue)](https://texpage.com/template/88eb11aa-bd5c-4b6b-b654-86517c5148a1)

**`sysuthesis`** 是为中山大学设计的 **LaTeX 学位论文模板**，旨在满足毕业论文排版需求。本科生模版格式遵循《中山大学本科生毕业论文（设计）写作与印制规范》，研究生模版格式遵循《中山大学研究生学位论文格式要求》，并采用 **LaTeX3 语法**实现简洁高效的排版体验。

-----

## 快速入门

建议您首先阅读[用户手册](http://mirrors.ctan.org/macros/unicodetex/latex/sysuthesis/sysuthesis.pdf)，其中详细介绍了模板的功能特性与使用方法。

### 在线编译

您可以通过以下平台直接在线使用本模板：

* **Overleaf 模板**: [点击此处](https://www.overleaf.com/latex/templates/sysuthesis/sghrrhbdvjbd)
* **TeXPage 模板**: [点击此处](https://texpage.com/template/88eb11aa-bd5c-4b6b-b654-86517c5148a1)

### 本地编译

推荐您使用 **包管理器** 安装最新版本的 `sysuthesis` 和 `sysuvisual`。

对于初次使用的用户，您可以参考以下步骤：

1. **安装 TeX 发行版**：确保您的 TeX 发行版版本不低于 2024 年，并更新所有宏包。
2. **下载模板文件**：下载包含[模板文件](https://github.com/irenier/sysuthesis/releases/latest)的压缩包 `sysuthesis-user-v*.zip`。
3. **修改内容**：根据您的实际需求，修改 `sysuthesis-sample.tex` 文件中的内容。
4. **编译文档**：在模板根目录下运行 `latexmk -xelatex` 命令进行编译，即可生成相应的 PDF 文件。

### 最小编译示例

以下是一个最小化的编译示例：

```tex
\documentclass{sysuthesis}
\sysusetup[option]{type=bachelor}
\begin{document}
\maketitle
\frontmatter
\begin{abstract}
  中文摘要。
\end{abstract}
\begin{abstract*}
  abstract.
\end{abstract*}
\tableofcontents
\mainmatter
\chapter{欢迎}
欢迎使用 \LaTeX{}！
\appendix
\end{document}
```

-----

## 许可

本模板的发布遵守 [LaTeX Project Public License（版本 1.3c 或更高）](https://www.latex-project.org/lppl/lppl-1-3c/)。
