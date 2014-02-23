\version "2.10.33"
\include "deutsch.ly"

lukovitskoMelodyI = \relative c'' {
  \times 2/3 {
    cis8 d d  cis d d |
    cis8 d d  d cis h |
    h8 cis cis  h cis cis |
    h cis cis  cis h a |
    a8 h4  h8 cis4 |
    cis4 h8  h a e |
  }
  a4 r8 e8 |
  \times 2/3 {
  a8 h4  h8 cis4 |
  cis4 h8  h a e |
  a8 a e } a4 |

}
lukovitskoHarmoniesI = \chordmode {
  d2 |
  d2 |
  a2 |
  a2 |
  e2 |
  e2 |
  a2 |
  e2 |
  e2 |
  a2 |
}

lukovitskoMelodyII = \relative c'' {
  \times 2/3 {
  cis8 d d  d4 e8 |
  cis4 h8  h a h |
  cis4 h8  h a e |
  a4 h8  cis cis a |

  cis8 d d  d4 e8 |
  cis4 h8  h a h |
  cis4 h8  h a e |
  a8 a e } a4 |
}
lukovitskoHarmoniesII = \chordmode {
  d2 |
  a2 |
  e2 |
  a2 |

  d2 |
  a2 |
  e2 |
  a2 |
}

lukovitskoMelodyIII = \relative c'' {
  \times 2/3 {
    h8 a a  fis gis a |
    h8 h h  dis dis fis, |
    fis'8 e e  dis c c |
    a8 h fis  h h fis |

    h8 a a  fis gis a |
    h8 h h  dis dis fis, |
    fis'8 e e  dis c c |
    a8 h fis } h4 |
}
lukovitskoHarmoniesIII = \chordmode {
  h2 |
  h2 |
  a2:m |
  h2 |

  h2 |
  h2 |
  a2:m |
  h2 |
}

lukovitskoMelodyIV = \relative c'' {
  \times 2/3 {
    fis8 e e  dis c c |
    a8 h c  dis dis fis,|
    fis'8 e e  dis c c |
    a8 h fis  h h fis |

    fis'8 e e  dis c c |
    a8 h c  dis dis fis, |
    fis'8 e e  dis c c |
    a8 h fis } h4 |
}
lukovitskoHarmoniesIV = \chordmode {
  a2:m |
  h2 |
  a2:m |
  h2 |

  a2:m |
  h2 |
  a2:m |
  h2 |
}

lukovitskoMelodyV = \relative c'' {
  \times 2/3 {
    a8 cis e  a gis h |
    a8 a g  g fis e |
    fis8 g a  g g a, |
    fis'8 fis fis  e fis g |
    a8 a g  g a, fis' |
    g8 g fis  e a, a |
    fis'8 fis a,  g' a, e' |
    fis8 fis fis  } e4 |
}
lukovitskoHarmoniesV = \chordmode {
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
}

lukovitskoMelodyVI = \relative c''' {
  \times 2/3 {
    a8 a g  g a, fis' |
    g8 g fis  e a, a |
    fis'8 fis a,  g' a, e' |
    fis8 fis fis  e a, a |

    a'8 a g  g a, fis' |
    g8 fis e  e dis e |
    fis8 g a  fis g a, |
    fis'8 fis e } e4 |
}
lukovitskoHarmoniesVI = \chordmode {
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
  a2 |
}


tupletSettings = {
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
}

lukovitskoMelody = {
  \tupletSettings
  \key a \major
  \time 2/4

  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 { \lukovitskoMelodyI }
  \break

  \override Score.RehearsalMark
    #'break-visibility = #begin-of-line-invisible
  \repeat volta 2 { \lukovitskoMelodyII }
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark "D.S."
  \break

  \key e \minor
  \repeat volta 2 { \lukovitskoMelodyIII }
  \break

  \repeat volta 2 { \lukovitskoMelodyIV }
  \break

  \key d \major
  \repeat volta 2 { \lukovitskoMelodyV }
  \break

  \repeat volta 2 { \lukovitskoMelodyVI }
  \break

  \bar "|."
}

lukovitskoHarmonies = {
  \set chordChanges = ##t
  \germanChords

  \lukovitskoHarmoniesI
  \lukovitskoHarmoniesII
  \lukovitskoHarmoniesIII
  \lukovitskoHarmoniesIV
  \lukovitskoHarmoniesV
  \lukovitskoHarmoniesVI
}

\header{ title = "Луковитско хоро" }
\score {
  <<
    \new Staff \lukovitskoMelody
    \new ChordNames \lukovitskoHarmonies
  >>
}
