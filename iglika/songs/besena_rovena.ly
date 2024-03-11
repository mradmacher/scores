\version "2.22.1"
\include "deutsch.ly"

bandMelody = \relative c'' {
  \repeat volta 2 {
    gis16 a a a  a gis f e | gis d e f  gis gis f e |
    d e e e  e e e e | f f f f  e8 e16 h |
  }
  \repeat volta 2 {
    e8 f gis a16 h | a16 gis a gis  f f f e |
    f16 a, d e  e e e e | f f f f e4 |
  }
}

introMelody = \relative c' {
  \magnifyMusic 0.90 {
    e8 e16 e16~e16 e16 e8 | d8 d8 e4 |
    e8 e16 e16~e16 e16 e8 | d8 d8 e4 |
  }
}

vocalMelody = \relative c'' {
  \repeat volta 2 {
    gis16 a a a  a gis f e | f8 gis gis f16 e | r8 e16 e e8 e | f4 e |
  }
  \break
  \repeat volta 2 {
    e8 f gis a16 gis | f e f gis f e e d | r8 e16 e e8 e | f4 e |
  }
  \break
  \repeat volta 2 {
    e8 e e e | e16 e e e e e a gis | f8 f f f | f16 f f f f8 f | r8 e16 e e8 e | f4 e |
  }
}

melody = \relative c''' {
  \clef treble
  \key a \minor
  \time 2/4

  \mark \markup { \circle { \bold Kapela } }
  \bandMelody
  \break

  \repeat volta 2 {
    h16 c c h  a a a e | a h h a  gis gis gis e |
    gis16 a a gis  gis f f e | e f gis a  h h h e, |
    h'16 c c h  a a a8 | a16 h h a  gis gis gis8 |
    gis16 a a gis  gis f f e | e8 h e4 |
  }
  \break
  \introMelody
  \break

  \mark \markup { \circle { \bold Śpiew } }
  \vocalMelody
  \break

  \mark \markup { \circle { \bold Kapela } }
  \repeat volta 2 {
    e8 dis'16 e e8 e | d16 d c d c h a8 | h16 e, h' c d c c h | c h a gis a gis f e |
    e16 f e d e h e f | gis e gis a h c h a | gis gis gis h a gis f e |
  }
  \alternative {{
    e16 f gis a h h h e, |
  }{
    e16 e e h e4 |
  }}
  \break

  \mark \markup { \circle { \bold Śpiew } }
  \vocalMelody
  \break

  \mark \markup { \circle { \bold Kapela } }
  \repeat volta 2 {
    d16 e e e e8 e | gis8 a h16 h h e, | h'16 d c h  a c h a | gis a gis f e e e8 |
    \break
  }
  \alternative {{
    d16 e e e e8 e | gis8 a h16 cis d e | d cis d e  d c h a | h c c h h4 |
  } {
    gis16 a h cis  d cis d e | d cis d e  d c h a | h c h a  gis f gis a | h a gis f e4 |
  }}
  \break
  \bandMelody
  \break

  \mark \markup { \circle { \bold Śpiew } }
  \vocalMelody
  \break

  \mark \markup { \circle { \bold Kapela } }
  \repeat volta 2 {
    h16 c c h  a a a e | a h h a  gis gis gis e |
    gis16 a a gis  gis f f e | e f gis a  h h h e, |
    h'16 c c h  a a a8 | a16 h h a  gis gis gis8 |
  }
  \alternative {
    { gis16 a a gis  gis f f e | e8 h e4 | }
    { r8 e16 e e8 e | f4 e | }
  }
}

melodyChords = \chordmode {
  \germanChords
}


\header{
  title = "Bešena rovena"
  tagline = "11.03.2024"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \melodyChords
  >>
}

\markup {
  \column {
    \line { Bešena rovena nano korkori, bešena rovena }
    \line { Ah, bešena rovena }

    \null

    \line { Disvidani žebo mo dernani nado }
    \line { Ah, Mo dernani nado }

    \null

    \line { Hajde mamo, hajde babo, hajde pala mande }
    \line { Ah, hajde pala mande }
  }

  \column {
    \line { \null }
    \line { \null }

    \line { Aj rovena bešena rovena }
    \line { Aj rovena bešena rovena }
    \line { Bešena rovena }
  }
}
