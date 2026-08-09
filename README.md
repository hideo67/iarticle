# iarticle - i18n-aware article/report templates

This package provides two templates, mirroring the LaTeX `article` vs.
`report` distinction:

- **`iarticle`** - flat, starts at "section", no chapters, no forced
  page breaks, no auto table of contents by default. For papers and
  other short documents.
- **`ireport`** - "chapter" is the top level (each one starts a new
  page), sections nest under it, table of contents included by
  default. For longer, structured documents.

Both localize their own generated text (chapter/section/appendix
labels, figure/table captions, "Contents", "References", "Abstract")
based on `lang`/`region` - see `l10n/`. Supported locales:

| `lang` | `region`         | locale    | l10n file          |
| ------ | ---------------- | --------- | ------------------- |
| `en`   | -                | en        | `l10n/en.typ`        |
| `ja`   | -                | ja        | `l10n/ja.typ`        |
| `zh`   | (none), other    | zh-hans   | `l10n/zh-hans.typ`   |
| `zh`   | `TW`, `HK`, `MO`  | zh-hant   | `l10n/zh-hant.typ`   |
| `ko`   | -                | ko        | `l10n/ko.typ`        |

Chinese needs `region` because Typst's `text.lang` only ever carries
the bare `"zh"` - it has no separate script field - so region is the
only signal available to tell Simplified from Traditional apart.

**The zh-hans/zh-hant/ko translations are a best effort, not a
native/fluent review** - neither this template's author nor the person
who wrote them reads these languages. They're standard,
low-ambiguity technical-document terms, not guesses, but get them
checked by a native/fluent speaker before relying on them for
anything real. Corrections are isolated one-line fixes in the
relevant `l10n/*.typ` file.

## To use:

```typst
#import "@preview/iarticle:0.1.0": ireport

#show: ireport.with(
    lang: "ja",
    title: "座席予約システム基本設計書"
)

= はじめに
本システムは座席予約機能を提供します。
予約管理システムと顧客管理システムのデータベースを参照します。

= アーキテクチャ
アーキテクチャについて説明します。
```

For a shorter, section-only document, use `iarticle` instead:

```typst
#import "@preview/iarticle:0.1.0": iarticle

#show: iarticle.with(
    lang: "en",
    title: "A Short Paper",
    abstract: [This paper is about...],
)

= Introduction
...
```

See `samples/` for fuller examples, including figures, tables,
citations, and `appendix(..)` - `report-{en,ja}.typ` for `ireport`,
`article-{en,ja,zh-hans,zh-hant,ko}.typ` for `iarticle`.

## Fonts

`iarticle`/`ireport` take `serif-font`/`sans-font` parameters (font
fallback lists, resolved per character, so mixed Latin/CJK text keeps
working). Left as `auto` (the default), the stack used depends on the
resolved locale (the same `lang`/`region` resolution as the string
table above): a Latin-only base for locales that don't need more, with
a locale-specific CJK addition for ja/zh-hans/zh-hant/ko - a different
one per script, since e.g. reusing a Japanese font for Chinese text can
render subtly wrong-shaped strokes ("Han unification") even though
nothing errors. This is also why an English document doesn't warn
about missing CJK fonts, but a Japanese/Chinese/Korean one does if none
are found. Override `serif-font`/`sans-font` at the call site rather
than editing this template; to extend the shipped defaults instead of
replacing them outright:

```typst
#import "@preview/iarticle:0.1.0": iarticle
#import "@preview/iarticle:0.1.0": default-latin-serif-font, default-cjk-serif-font

#show: iarticle.with(
  lang: "ja",
  serif-font: default-latin-serif-font
    + ("Hiragino Mincho ProN",)
    + default-cjk-serif-font.at("ja"),
)
```

## Local development

Run `install_for_test.sh` once to register this checkout as
`@preview/iarticle:0.1.0`, then compile anything under `samples/`.

Scaffold a new project from `template/` the same way an end user would:

```sh
typst init @preview/iarticle:0.1.0 my-project
```

