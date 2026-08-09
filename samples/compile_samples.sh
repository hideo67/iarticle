#!/bin/sh -e

typst compile article-en.typ
typst compile article-ja.typ
typst compile article-ko.typ
typst compile article-zh-hans.typ
typst compile article-zh-hant.typ
typst compile report-en.typ
typst compile report-ja.typ
