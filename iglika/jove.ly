\version "2.16.2"
\include "deutsch.ly"

melody_i = \relative c'' {
  \repeat volta 2 {
    a16 a8  e16 e e d  a'16[ a16] e8  a16 a8  g16 g g fis |
    a16 a8  e16 e e d  fis16 g fis d  e16 e8  e16 e e d |
  }
}
harmonies_i = \chordmode {
  a8. a4 a4 a8. a4 |
  a8. a4 d4 e8. a4 |
}

melody_ii = \relative c'' {
  \repeat volta 2 {
    g8 a16  h16 h h a  d16 c h a  a16 a h  g16 g g d |
    fis16 fis fis  g16 g g fis  fis16 e fis d  e16 e d  g16 a a d, |

    g8 a16  h16 h h a  d16 c h a  a16 a h  g16 g g d |
    fis16 fis fis  g16 g g fis  fis16 e fis d  e16 e a,  e'16 e e8 |
  }
}
harmonies_ii = \chordmode {
  g8. g4 g4 g8. g4 |
  d8. d4 e4 a8. d4 |

  g8. g4 g4 g8. g4 |
  d8. d4 e4 a8. a4 |
}

melody_iii = \relative c' {
  \repeat volta 2 {
    fis16 fis8  g16 g g fis  fis16 e fis d  e16 e d  g16 a a d, |
    fis16 fis8  g16 g g fis  fis16 e fis d  e16 e a  e16 e e d |

    fis16 fis8  g16 g g fis  fis16 e fis d  e16 e d  g16 a a d, |
    fis16 fis8  g16 g g fis  fis16 e fis d  e16 e a  e16 e e8 |
  }
}
harmonies_iii = \chordmode {
  d8. d4 e4 a8. d4 |
  d8. d4 e4 a8. a4 |

  d8. d4 e4 a8. d4 |
  d8. d4 e4 a8. a4 |
}

melody = {
  \key g \major
  \time 18/16
  \set Timing.beatStructure = #'(3 4 4 3 4)

  \melody_i
  \melody_ii
  \melody_iii
}
harmonies = {
  \germanChords
  \set chordChanges = ##t
  \harmonies_i
  \harmonies_ii
  \harmonies_iii
}

\header { title = "Йове" }
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}
