// korean (ko) localizations
//
// BEST EFFORT, NOT NATIVE-REVIEWED: neither the template author nor the
// person who wrote this file reads Korean. These are standard,
// low-ambiguity technical-document terms (the kind every paper/report
// uses), chosen carefully rather than guessed - "chapter"/"contents"
// spacing was checked against real Korean thesis style guides - but
// this has not been checked by a fluent/native speaker. Please get
// this file reviewed before relying on it for anything real, and if
// you find a mistake, it's an isolated one-line fix - see l10n/en.typ
// for the format.
#let strings = (
  abstract: [초록],
  contents: [목차],
  // "제1장" (no space): the "제" ordinal prefix binds directly to the
  // number in Korean chapter headings - confirmed against real thesis
  // style guides, unlike "appendix" below.
  chapter: n => [제#(n)장],
  // Korean technical documents commonly number subsections bare
  // ("1.1 서론"), without repeating a word - same convention as
  // l10n/ja.typ's "section" entry, for the same reason.
  section: n => [#n],
  table: [표],
  figure: [그림],
  // "부록 A" (with a space): less confidence than "chapter" above -
  // 부록 is a standalone noun rather than a bound prefix, so this
  // follows the general Korean convention of spacing a noun from a
  // following numeral/letter, but wasn't found in a style guide the
  // way "chapter" was. Worth double-checking first.
  appendix: n => [부록 #(n)],
  references: [참고문헌],
)
