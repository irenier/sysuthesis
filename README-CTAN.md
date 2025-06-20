The `sysuthesis` class
=====================

The `sysuthesis` class is intended for typesetting Sun Yat-sen University
dissertations with LaTeX, providing support for bachelor, master,
doctoral thesis. Compilation of this class requires
either `xelatex` or `lualatex` engine.

Usage
-----

A minimal example of this document class should look like

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

Contributing
------------

[Issues](https://github.com/irenier/sysuthesis/issues) and
[pull requests](https://github.com/irenier/sysuthesis/pulls)
are always welcome.

License
-------

This work may be distributed and/or modified under the conditions of
the [LaTeX Project Public License](http://www.latex-project.org/lppl.txt),
either version 1.3c of this license or (at your option) any later
version.

-----

Copyright (C) 2024 - 2025 by Renier Tan <irantan@163.com>.
