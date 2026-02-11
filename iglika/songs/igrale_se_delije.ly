\version "2.22.1"
\include "deutsch.ly"

igraleSeDelijeMelodyI = \relative c'' {
  \times 2/3 { a8 a d, }  \times 2/3 { a' a d, } \times 2/3 { a' a d, } \times 2/3 { a' a d, } |
  a'4 d cis \times 2/3 { b8 a g } |
  a4 d a d |
  \times 2/3 { b8 a g } \times 2/3 { d e fis } g2 |
}
igraleSeDelijeHarmoniesI = \chordmode {
  d1 |
  d1 |
  d1 |
  d2 g2:m |
}

igraleSeDelijeMelodyII = \relative c'' {
  \times 2/3 { a8 b c } \times 2/3 { b a g } \times 2/3 { d e fis } \times 2/3 {  g g d } |
  \times 2/3 { b'8 a g } \times 2/3 { d e fis } \times 2/3 { g g d } \times 2/3 { g g d } |
  \times 2/3 { a'8 b c } \times 2/3 { b a g } \times 2/3 { d e fis } \times 2/3 { g g d } |
}
igraleSeDelijeMelodyIIVoltaI = \relative c'' {
  \times 2/3 { b8 a g } \times 2/3 { d e fis } \times 2/3 { g g d} g4 |
}
igraleSeDelijeMelodyIIVoltaII = \relative c'' {
  \times 2/3 { b8 a g } \times 2/3 { d e fis } g2 |
}
igraleSeDelijeHarmoniesII = \chordmode {
  d2 g2:m |
  d2 g2:m |
  d2 g2:m |
}
igraleSeDelijeHarmoniesIIVoltaI = \chordmode {
  d2 g2:m |
}
igraleSeDelijeHarmoniesIIVoltaII = \chordmode {
  d2 g2:m |
}

igraleSeDelijeMelodyIII = \relative c'' {
  g8. g16  g8 f  e d16( cis)  d4 |
  g,8 b  d d  cis b16( a)  g4 |
}
igraleSeDelijeHarmoniesIII = \chordmode {
  g1:m |
  g2:m d4 g4:m |
}

igraleSeDelijeMelodyIV = \relative c' {
  g8 b  d d  e d16( cis)  d4 |
  e8 d  cis b  a a  a4 |
}
igraleSeDelijeHarmoniesIV = \chordmode {
  g1:m |
  a2 d2 |
}

igraleSeDelijeInstrumentalMelody = {
  \key g \minor
  \time 2/4

  \repeat volta 2 { \igraleSeDelijeMelodyI }
  \break
  \repeat volta 2 { \igraleSeDelijeMelodyII }
  \alternative { { \igraleSeDelijeMelodyIIVoltaI } { \igraleSeDelijeMelodyIIVoltaII } }
  \bar "|."
}
igraleSeDelijeInstrumentalHarmonies = {
  \germanChords
  \set chordChanges = ##t

  \igraleSeDelijeHarmoniesI
  \igraleSeDelijeHarmoniesII \igraleSeDelijeHarmoniesIIVoltaI \igraleSeDelijeHarmoniesIIVoltaII
}

igraleSeDelijeVocalMelody = {
  \key g \minor
  \time 2/4

  \igraleSeDelijeMelodyIII \igraleSeDelijeMelodyIII
  \break
  \igraleSeDelijeMelodyIV \igraleSeDelijeMelodyIV \bar "|."
}
igraleSeDelijeVocalHarmonies = {
  \germanChords
  \set chordChanges = ##t

  \igraleSeDelijeHarmoniesIII \igraleSeDelijeHarmoniesIII
  \igraleSeDelijeHarmoniesIV \igraleSeDelijeHarmoniesIV
}

\header{
  title = "Igrale se delije"
  tagline = "11.02.2026"
}

\score {
  <<
    \new Staff \transpose g d' \igraleSeDelijeInstrumentalMelody
    \new ChordNames \transpose g d' \igraleSeDelijeInstrumentalHarmonies
  >>
}
\score {
  <<
    \new Staff \transpose g d' \igraleSeDelijeVocalMelody
    \new ChordNames \transpose g d' \igraleSeDelijeVocalHarmonies
  >>
}

\markup {
  \hspace #10
  \column {
    \line { Igrale se delije }
    \line { na sred zemlje Srbije. }
    \line { Sitno kolo do kola }
    \line { vilo se do Stambola. }

  }

  \hspace #10
  \column {
    \line { Svira frula iz dola, }
    \line { frula moga sokola. }
    \line { Sitno kolo do kola }
    \line { čulo se do Stambola. }
  }

  \hspace #10
  \column {
    \line { Čulo se do Stambola, }
    \line { carskog grada okola. }
    \line { Igra kolo do kola, }
    \line { ne haje za Stambola. }
  }
}

