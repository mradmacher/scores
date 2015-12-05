\version "2.16.2"
\include "deutsch.ly"

instrumental = \relative c''' {
  \clef treble
  \key e \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  g8 g fis e4 e8 fis | dis4 c8 h2 | c8 a c e dis c h | h c a h c dis e |
  g8 g fis e4 e8 fis | dis4 c8 h2 | c8 a c e dis c h | h4. c4 c4 | \bar "||"
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  e4.:m s2 | h4. s2 | a4.:m s2 | h4. s2 |
  e4.:m s2 | h4. s2 | a4.:m s2 | h4. c2 |
}

vocal = \relative c' {
  \clef treble
  \key e \minor
  \time 7/8

  \repeat volta 2 {
    h4. dis4 e | fis4 g8 e2 | g4. fis4 e | dis4 c8 h2 |
    h4. dis4 e | fis4 fis8 g fis e dis | fis4.~ fis2 | r4. r2 | \break

    g4. g4 g | fis4. e2 | g4. fis4 e | dis4 c8 h2 | dis4 e8 fis4 e |
    dis4 c8 e dis c h | h4.~ h2 | r4. r2 |

    g'4. g4 g | fis4. e2 | g4. fis4 e | dis4 c8 h2 | dis4 e8 fis4 e |
    dis4 c8 e dis c h | h4.~ h2 | r4. r2 |
  }
}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  h4. s2 | e4.:m s2 | c4. s2 | h4. s2 | h4. s2 | h4. s2 | h4. s2 | h4. s2 |

  e4.:m s2 | e4.:m s2 | c4. s2 | h4. s2 | h4. s2 | h4. a2:m | h4. s2 | h4. s2 |

  e4.:m s2 | e4.:m s2 | c4. s2 | h4. s2 | h4. s2 | h4. a2:m | h4. s2 | h4. s2 |
}

\header {
  title = "Назад, назад, моме Калино"
  composer = Macedonia
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
