#!/usr/bin/env texlua

-- Build script for sysuthesis.
-- run with `l3build`

module        = "sysuthesis"

textfiles     = {"LICENSE", "*.md", "*.ins"}
ctanreadme    = "README-CTAN.md"

typesetexe    = "xelatex"
typesetfiles  = {"sysuthesis.dtx"}

unpackexe     = "xetex"
unpackfiles   = {"sysuthesis.dtx"}