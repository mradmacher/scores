\version "2.8.7"
\include "deutsch.ly"

edmund = \relative c' {
  \clef treble
  \key d \major
  \time 4/4

  \repeat volta 2 {
    <cis' e>8 a, <cis' e> a, <cis' e> a, <cis' e> a, |
    <d' fis>8 a, <d' fis> a, <cis' e> a, <cis' e> a, |
    <cis' e>8 a, <cis' e> a, <e'' g> a,, <e'' g> a,, |
  } \alternative {
    { <cis' e>8 a, <cis' e> a, <cis' e> a, <cis' e> a, | }
    { <cis' e>8 a, <cis' e> a, <cis' e>2 | }
  } \bar "||" \break


  \repeat volta 2 {
    g,8 g' h g a, a' cis a |
    fis, ais' cis ais h, h' d h |
    g,8 g' h g a, a' cis a |
    d, a' d a d, a' d a |

    g,8 g' h g a, a' cis a |
    fis, ais' cis ais h, h' d h |
    g,8 g' h g a, a' cis a |
  } \alternative {
    { d, a' d a d, a' d a | }
    { d, a' d a d,2 | }
  }
  \bar "||"
}

\header { title = \markup { Serdecznie dobry człowiek } }
\score {
  \new Staff \edmund
}
