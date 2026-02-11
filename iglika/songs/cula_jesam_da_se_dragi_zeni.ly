\version "2.22.1"
\include "deutsch.ly"


\header {
  title = "Čula jesam da se dragi ženi"
  composer = "arr. Adam Hliniak"
  tagline = "17.12.2025"
}

melody = \relative c'{
  \clef treble
  \key h \minor
  \time 4/4

  \mark \markup { "Wstęp" }
  fis'4 h fis h | a8 g fis e fis4. d8 | e8 d cis4 h2 | \bar "|." \break

  \mark \markup \with-color #green { \musicglyph "scripts.segno" }
  \repeat volta 2 {
    fis'8 h a g fis e d4 | g8 g fis e d cis h4 | e16 dis e fis g fis e fis e d cis d e d cis d | cis8 h4 ais8 h2 |
  }

  \mark \markup { "Śpiew" }
  fis'4 h fis h |
  a8 g fis e fis4. d8 | e d cis4 h2 |
  fis'4 h fis h | a8 g fis e fis4. d8 |
  e8 d cis4 h2 |
  \break

  e8 e e4 h8 cis d4 |
  e8 e e4 h8 cis d4 |
  cis8 d e d cis d e d |
  cis h4. h2 |
  e8 e e4 h8 cis d4 |
  e8 e e4 h8 cis d4 |
  cis8 d e d cis d e d |
  cis8 h4. h2 |
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup \with-color #green { "D.S." }
  \bar "|."
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  %\set chordChanges = ##t
  h1:m | e2:m h2:m | fis2:7 h2:m |

  e2:m h2:m | e2:m h2:m | g2 a2 | h1:m |

  h1:m | e2:m h2:m | fis2:7 h2:m |
  h1:m | e2:m h2:m | fis2:7 h2:m |

  e2:m h2:m | e2:m h2:m | g2 a2 | h1:m |
  e2:m h2:m | e2:m h2:m | g2 a2 | h1:m |
}


\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}
