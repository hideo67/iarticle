// Sample document for iarticle with lang: "ko" - Korean.
//
// NOTE: l10n/ko.typ is a best-effort translation, not reviewed by a
// native/fluent speaker - see the comment at the top of that file.
//
// Before this will compile, register the local checkout as
// @preview/iarticle:0.1.0 by running ../install_for_test.sh once.
#import "@preview/iarticle:0.1.0": iarticle, appendix

#show: iarticle.with(
  lang: "ko",
  title: "TODO: 논문 제목",
  authors: ("TODO: 저자 이름",),
  abstract: [
    TODO: 한 문단으로 논문을 요약합니다.
  ],
)

= TODO: 서론

TODO: 본문 내용, 예를 들어 Knuth의 문학적 프로그래밍 논문 @knuth1984
을 인용할 수 있습니다. 또한 두 번째 인용 예시로 @tufte2001 을 참조하세요.

== TODO: 관련 연구

TODO: 소단원 본문.

#figure(
  rect(width: 4cm, height: 2.5cm, stroke: 0.5pt),
  caption: [TODO: 그림 설명],
)

#figure(
  table(
    columns: 3,
    [*열 A*], [*열 B*], [*열 C*],
    [TODO], [TODO], [TODO],
  ),
  caption: [TODO: 표 설명],
)

= TODO: 방법

TODO: 본문.

#appendix[
  = TODO: 추가 자료

  TODO: 보충 자료. `appendix(..)` 는 ireport 와 동일한 방식으로
  동작합니다 - 두 템플릿의 차이는 라벨이 "장"인지 "절"인지 뿐입니다.
]

#bibliography("refs.bib")
