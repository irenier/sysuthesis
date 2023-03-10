# sysuthesis

此项目为中山大学本科生毕业论文（设计） $\LaTeX$ **非官方**模板，力求符合《中山大学本科生毕业论文（设计）写作与印制规范》。

[点击此处下载 `zip` 压缩包](https://github.com/irenier/sysuthesis/archive/refs/heads/master.zip)。

## 编译方法

### 依赖与冲突

本模板要求使用 TeXLive、MacTeX 或 MiKTeX 不低于 2020 年的发行版，安装方式详见 [install-latex-guide-zh-cn](http://mirrors.ctan.org/info/install-latex-guide-zh-cn/install-latex-guide-zh-cn.pdf)。

本模板直接依赖的宏包有：xeCJK, ctex, etoolbox, unicode-math, amsmath, fontspec, geometry, graphicx, fancyhdr, xcolor, titletoc, enumitem, float, caption, footmisc, url, notoccite。

与本模板不兼容的宏包有：amsfonts, amssymb, bm, cite, mathrsfs,
newtx, upgreek。

### 模板组成

| 类别 | 文件 | 说明 |
| ---- | ---- | ---- |
| 模板文件 | `sysuthesis.cls` | 论文模板文件 |
|  | `sysuvisual.sty` | 提供校徽 `tizk` 图片 |
| 主要文件 | `thesis.tex` | 主文档 |
|  | `sysusetup.tex` | 配置文档 |
|  | `./chapter/*.tex` | 章节文档 |
|  | `./figures/sysu-badge.pdf` | 校徽 `pdf` 格式图片 |
|  | `./bib/sysu.bib` | BiBTeX 数据库 |

### 开始编译

- 使用 latexmk 自动编译。参数设置为 `-xelatex` 或者 `-lualatex`。若使用了 minted 宏包，还需加上参数 `-shell-escape`。命令如下：

    ```bash
    latexmk -xelatex thesis.tex
    ```

    或者

    ```bash
    latexmk -lualatex thesis.tex
    ```

- 手动编译。用户需要运行多遍，以确保论文的交叉引用等信息全部正确。以 BibTeX 为例：

    ```bash
    xelatex thesis.tex
    bibtex thesis.aux
    xelatex thesis.tex
    xelatex thesis.tex
    ```

## 模板设置

### 文档类参数

在 `sysusetup.tex` 中对参数进行设定。

- `cover-title`：设定封面及扉页标题的行数。可选：`oneline`（默认）, `twoline`。

  - `oneline`：封面标题将使用参数 `title` 及 `title*` 中的内容。

  - `twoline`：则封面标题将使用参数 `cover-title-firstline`,
        `cover-title-firstline*`, `cover-title-secondline` 以及
        `cover-title-secondline*` 中的内容。

- `print`：设定打印样式。可选：`oneside`（默认），`twoside`。

  - `oneside`：单面打印，不添加空白页。

  - `twoside`：双面打印，添加空白页。

- `color`：设定文档的主要颜色，包括校徽、封面的分割线、超链接以及引用的颜色。可选：`sysugreen`（默认）、`sysured` 以及用户自定义的颜色。

## 论文内容

论文内容按以下顺序排列：

- `title page`：封面、扉页、学术诚信声明

- `frontmatter`: 摘要，目录

- `mainmatter`: 正文章节，参考文献

- `appendix`: 附录

### 封面及扉页

由 `\maketitle` 命令生成，其中的各项信息使用 `\sysusetup`
命令的方式填写，如：

```TeX
\sysusetup{
    title = {论文中文题目},
    title* = {Thesis English Title},
}
```

模板提供的选项见下表

| 选项 | 选项（英文） | 说明 |
| --- | --- | --- |
|`title`      |  `title*`      |  论文标题|
|`author`     |  `author*`     |  作者姓名|
|`department` |  `department*` |  学院|
|`speciality` |  `speciality*` |  专业|
|`supervisor` |  `supervisor*` |  导师姓名|
|`keywords`   |  `keywords*`   |  关键词|
|`student-id` |              |  学号|
|`date`       |             |  完成时间|

我们需要注意以下几点：

- `\sysusetup` 使用 `kvsetkeys` 机制，配置项之间不能有空行，否则会报错。其中带 \* 后缀的选项用于设置英文封面。

- 导师姓名 `supervisor` 允许多个姓名，使用","（西文逗号 U+002C）隔开。

- 关键词（用于摘要页） `keywords` 也必须使用","（西文逗号 U+002C）隔开。

- 完成时间 `date` 应使用 ISO 格式，默认为当前日期。

### 摘要和章节

对于特殊的章节，sysuthesis 还提供了相应的环境：

- 中文摘要：`abstract`

- 英文摘要：`abstract*`

- 致谢：`acknowledgements`

- 发表成果：`publications`

目录和图、表清单可以使用命令自动生成：

- 目录：`\tableofcontents`

- 图清单：`\listoffigures`

- 表清单：`\listoftables`

### 参考文献

参考文献支持使用 BibTeX 或者 Biber 生成，请根据自己的需要自行使用。

## 字体设置

### 中文字体

在 `thesis.tex` 中进行设置：

根据当前系统自动配置：

```TeX
\documentclass{sysuthesis}
```

或者手动指定字体

```TeX
\documentclass[fontset=windows]{sysuthesis}
```

可选参数 `adobe`, `fandol`, `founder`, `mac`, `macnew`, `macold`, `ubuntu`, `windows`。详见
[CTeX宏集手册](http://mirrors.ctan.org/language/chinese/ctex/ctex.pdf)
第 4.3 节。

**注意**：

- 若使用 LuaLaTeX 编译，不能使用 `windows` 或者 `adobe`
字库，此时建议使用 `founder` 字库。

- 此外，`fandol` 字库的字形较少，常常出现缺字的情况，不建议使用。

- 若在 overleaf 上使用此模板，建议使用 `ubuntu` 字库。

### 英文字体

《本科生毕业论文写作与印制规范》要求：数字和英文字母一般用 Times New Roman。

在 `sysusetup.tex` 中进行设置：

```TeX
\setmainfont{Times New Roman}
```

### 数学字体

在 `sysusetup.tex` 中进行设置，例如：

```TeX
\setmathfont{Latin Modern Math}
```

可用字体如下表所示，全部数学符号的命令参考 [List of symbols
defined by the
package](http://mirrors.ctan.org/macros/unicodetex/latex/unicode-math/unimath-symbols.pdf)
以及 [Math coverage and symbol
comparison](http://mirrors.ctan.org/fonts/newcomputermodern/doc/newcm-unimath-symbols.pdf)。

|字体名                  | 字符数量|
|----------------------- | ----------|
|Latin Modern Math       | 1585|
|New CM Math             | 2428|
|XITS Math               | 2427|
|STIX Math Two           | 2428|
|TeX Gyre Pagella Math   | 1638|
|DejaVu Math             | 1640|
|Fira Math               | 1052|

若使用 New CM Math，则需 TeXLive 2021 或以上版本。
