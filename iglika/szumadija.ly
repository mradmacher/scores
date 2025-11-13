\version "2.22.1"
\include "deutsch.ly"

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 2/4

  \repeat volta 2 {
    c8 d16 e f8 e | f e f e | e16 f g e a g f8 | f16 e d8 d c | e16 f g e a g f8 | f16 e d8 d16 c d e | f8 f e16 f g8 |
  }
  \alternative {
    { d8 r8 r4 | }
    { d8 r8 d16 c d e | }
  }
  \break

  \repeat volta 2 {
    f8 f e16 f g8 | f16 e d8 d16 c d e | f8 f e16 f g8 | f16 e d8 d c | f8 f e16 f g8 | f16 e d8 d16 c d e | f8 f e16 f g8 | d8 r8 r4 |
  }
  \break

  \repeat volta 2 {
    h16 c d8 d d | h16 c d8 d d | f8 e e16 d e8 | c8 d d d | h16 c d8 d d | h16 c d8 d d | f8 e e16 d e8 |
  }
  \alternative {
    { d8 r8 d8 d | }
    { d8 r8 r4 | \bar "|." }
  }
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  %\set chordChanges = ##t

  c2 | s2 | s2 | g2 | c2 | g2 | f4:m c4 |
  g2 |
  g2 |

  f4:m c | g2 | f4:m c | g2 | f4:m c | g2 | f4:m c | g2 |

  g2 | s2 | f2:m | g2 | s2 | s2 | f2:m |
  g2 |
  g2 |
}

\header {
  title = "Šumadija"
  tagline = "13.11.2025"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}
