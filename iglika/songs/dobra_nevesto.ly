\version "2.16.2"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key d \minor
  \time 7/16
  \set Timing.beatStructure = #'(3 4)

  \repeat volta 2 {
    e16 f g g f g f | g f e d8 d | c8 c16 e8 c | d8 c16 d e f8 |
    e16 f g g f g f | g f e d8 d | c8 c16 e8 c | d8. d8 r8 |
  }
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  d8.:m s4 | d8.:m s4 | c8. s4 | d8.:m s4 |
  d8.:m s4 | d8.:m s4 | c8. s4 | d8.:m s4 |
}

vocal = \relative c' {
  \clef treble
  \key d \minor
  \time 7/16

  \repeat volta 2 {
    d8. d8 g | g8 f16 e8 d8 | e8. c8 d8 | d8. d4 |
    d8. d8 g | g8 f16 e8 d8 | e8. c8 d8 | d8. d4 |

    c8. c8 f | e8.~ e8 d8 | e8. c8 d8 | d8. d4 |
    c8. c8 f | e8.~ e8 d8 | e8. c8 d8 | d8. d4 |
  }

}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  d8.:m s4 | d8.:m s4 | c8. s4 | d8.:m s4 |
  d8.:m s4 | d8.:m s4 | c8. s4 | d8.:m s4 |

  c8. s4 | c8. s4 | c8. s4 | d8.:m s4 |
  c8. s4 | c8. s4 | c8. s4 | d8.:m s4 |
}

\header {
  title = "Добра невесто"
  composer = "Macedonia - Pirin"
}

\score {
  <<
    \new Staff \instrumental
    \new ChordNames \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \vocal
    \new ChordNames \vocalChords
  >>
}
