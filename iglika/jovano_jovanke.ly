\version "2.16.2"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key d \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \partial 4*1 a8 g |
  \repeat volta 2 {
    a8 b g a b cis a | cis d b cis d e cis | f8 e d e d cis b |
  }
  \alternative {{
     d cis b a4 a8 g |
  }{
     d' cis b a2 |
  }}

}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \partial 4*1 a4 |
  a4. s2 | a4. s2 | g4.:m s2 |
  g4.:m a2 |
  g4.:m a2 |
}

vocal = \relative c' {
  \clef treble
  \key d \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  cis4 e8 d cis b a | a4.~ a2 | r4. r2 |
  e'4 g8 f e d cis | e4.~ e2 | r4. r2 |
  \repeat volta 2 {
    f4 f8 f4 f | f8 e f g4 g8 f | e4 e8 e4 e | e8 d e f2 |
    d4 d8 d4 e8 f | g4 f8 e4 d | d4 cis8 d cis d e |
    cis4 e8 d cis b a | a4.~ a2 | r4. r2 |
  }
}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  a4. s2 | a4. s2 | a4. s2 |
  a4. s2 | a4. s2 | a4. s2 |

  d4.:m s2 | d4.:m g2:m |
  c4. s2 | c4. f2 |
  d4.:m s2 | g4.:m s2 |
  a4. s2 | a4. g2:m |
  a4. s2 | a4. s2
}

\header {
  title = "Јовано, Јованке"
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

