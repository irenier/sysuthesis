# `sysuthesis`: 中山大学学位论文 LaTeX 模板

[![build status](https://github.com/irenier/sysuthesis/actions/workflows/build.yml/badge.svg)](https://github.com/irenier/sysuthesis/actions/workflows/build.yml)
[![GitHub Release](https://img.shields.io/github/v/release/irenier/sysuthesis)](https://github.com/irenier/sysuthesis/releases/latest)
[![CTAN Version](https://img.shields.io/ctan/v/sysuthesis)](https://www.ctan.org/pkg/sysuthesis)
[![Overleaf](https://img.shields.io/badge/Overleaf-brightgreen)](https://www.overleaf.com/latex/templates/sysuthesis/sghrrhbdvjbd)
[![TeXPage](https://img.shields.io/badge/TeXPage-steelblue)](https://texpage.com/template/88eb11aa-bd5c-4b6b-b654-86517c5148a1)

**`sysuthesis`** 是为中山大学设计的 **LaTeX 学位论文模板**，旨在满足毕业论文排版需求。本科生模版格式遵循《中山大学本科生毕业论文（设计）写作与印制规范》，研究生模版格式遵循《中山大学研究生学位论文格式要求》，并采用 **LaTeX3 语法**实现简洁高效的排版体验。

## 快速入门

建议您首先阅读[用户手册](http://mirrors.ctan.org/macros/unicodetex/latex/sysuthesis/sysuthesis.pdf)以了解完整功能。

### 在线编译

您可以通过以下平台直接在线使用本模板：

* **Overleaf 模板**: [点击此处](https://www.overleaf.com/latex/templates/sysuthesis/sghrrhbdvjbd)
* **TeXPage 模板**: [点击此处](https://texpage.com/template/88eb11aa-bd5c-4b6b-b654-86517c5148a1)

### 本地编译

您可以根据使用习惯选择以下任意一种方式。

> **提示**：为获得最佳兼容性，请确保您的 TeX 发行版不低于 2024 年。

#### 通过包管理器（推荐）

适用于已安装 TeX Live 2025+ 或 MiKTeX 的用户。

1. **更新宏包**：在终端运行 `tlmgr update --self --all` (TeX Live) 或通过 MiKTeX Console 检查更新。
2. **直接编写**：新建 `tex` 文件，参考下文的[最小编译示例](#最小编译示例)或使用仓库内的[示例文件](./test/sysuthesis-sample.tex)。
3. **执行编译**：运行 `latexmk -xelatex`。

#### 手动下载使用

适用于需要完整工程目录进行参考，或不方便进行系统级更新的用户。

1. **获取源码**：从 [Releases](https://github.com/irenier/sysuthesis/releases/latest) 下载并解压 `sysuthesis-user-v*.zip`。
2. **编辑内容**：直接修改文件夹内的 `sysuthesis-sample.tex`。
3. **执行编译**：在解压目录运行 `latexmk -xelatex`。

## 最小编译示例

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

## 许可

本模板的发布遵守 [LaTeX Project Public License（版本 1.3c 或更高）](https://www.latex-project.org/lppl/lppl-1-3c/)。

---

**如果您在使用过程中遇到问题，欢迎提交 [Issue](https://github.com/irenier/sysuthesis/issues) 或 Pull Request。**
