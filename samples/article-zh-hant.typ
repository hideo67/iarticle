// Sample document for iarticle with lang: "zh", region: "TW" -
// Traditional Chinese. The region is what selects zh-hant over the
// zh-hans default - see lib.typ's `_locale-for`. "HK" or "MO" would
// resolve to zh-hant the same way.
//
// NOTE: l10n/zh-hant.typ is a best-effort translation, not reviewed by
// a native/fluent speaker - see the comment at the top of that file.
//
// Before this will compile, register the local checkout as
// @preview/iarticle:0.1.0 by running ../install_for_test.sh once.
#import "@preview/iarticle:0.1.0": iarticle, appendix

#show: iarticle.with(
  lang: "zh",
  region: "TW",
  title: "TODO: 論文標題",
  authors: ("TODO: 作者姓名",),
  abstract: [
    TODO: 用一段話概括本文。
  ],
)

= TODO: 引言

TODO: 正文內容，例如引用 Knuth 關於文學編程的論文 @knuth1984。另見
@tufte2001 作為第二個引用範例。

== TODO: 相關工作

TODO: 小節正文。

#figure(
  rect(width: 4cm, height: 2.5cm, stroke: 0.5pt),
  caption: [TODO: 圖片說明],
)

#figure(
  table(
    columns: 3,
    [*欄 A*], [*欄 B*], [*欄 C*],
    [TODO], [TODO], [TODO],
  ),
  caption: [TODO: 表格說明],
)

= TODO: 方法

TODO: 正文。

#appendix[
  = TODO: 補充資料

  TODO: 補充材料。`appendix(..)` 的機制與 ireport 相同 - 兩個模板的
  差異只在於標籤是「章」還是「節」。
]

#bibliography("refs.bib")
