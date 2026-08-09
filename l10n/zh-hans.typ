// simplified chinese (zh-hans) localizations
//
// BEST EFFORT, NOT NATIVE-REVIEWED: neither the template author nor the
// person who wrote this file reads Chinese. These are standard,
// low-ambiguity technical-document terms (the kind every paper/report
// uses), chosen carefully rather than guessed, but they have not been
// checked by a fluent/native speaker. Please get this file reviewed
// before relying on it for anything real, and if you find a mistake,
// it's an isolated one-line fix - see l10n/en.typ for the format.
#let strings = (
  abstract: [摘要],
  contents: [目录],
  chapter: n => [第#(n)章],
  // Chinese technical documents commonly number subsections bare
  // ("1.1 引言"), without repeating a word - same convention as
  // l10n/ja.typ's "section" entry, for the same reason.
  section: n => [#n],
  table: [表],
  figure: [图],
  appendix: n => [附录#(n)],
  references: [参考文献],
)
