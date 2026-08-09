// Sample document for iarticle with lang: "zh", region: "CN" -
// Simplified Chinese. See lib.typ's `_locale-for` for how (lang,
// region) resolves to the zh-hans vs. zh-hant string table, since
// Typst's `text.lang` alone can't tell the two apart.
//
// NOTE: l10n/zh-hans.typ is a best-effort translation, not reviewed by
// a native/fluent speaker - see the comment at the top of that file.
//
// Before this will compile, register the local checkout as
// @preview/iarticle:0.1.0 by running ../install_for_test.sh once.
#import "@preview/iarticle:0.1.0": iarticle, appendix

#show: iarticle.with(
  lang: "zh",
  region: "CN",
  title: "TODO: 论文标题",
  authors: ("TODO: 作者姓名",),
  abstract: [
    TODO: 用一段话概括本文。
  ],
)

= TODO: 引言

TODO: 正文内容，例如引用 Knuth 关于文学编程的论文 @knuth1984。另见
@tufte2001 作为第二个引用示例。

== TODO: 相关工作

TODO: 小节正文。

#figure(
  rect(width: 4cm, height: 2.5cm, stroke: 0.5pt),
  caption: [TODO: 图片说明],
)

#figure(
  table(
    columns: 3,
    [*列 A*], [*列 B*], [*列 C*],
    [TODO], [TODO], [TODO],
  ),
  caption: [TODO: 表格说明],
)

= TODO: 方法

TODO: 正文。

#appendix[
  = TODO: 补充数据

  TODO: 补充材料。`appendix(..)` 的机制与 ireport 相同 - 两个模板的
  区别只在于标签是「章」还是「节」。
]

#bibliography("refs.bib")
