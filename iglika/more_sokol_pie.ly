\version "2.16.2"
\include "deutsch.ly"

instrumental = \relative c' {
  \clef treble
  \key c \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \repeat volta 2 {
    h4 c8 h as g4 | d'4 es8 d c h c | d4 c8 h as as g |
  }
  \alternative {{
    g4 r8 d' c h as |
  }{
    g4.~ g4 r4 | \bar "||"
  }}
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  g4. s2 | g4. s2 | f4.:m s2 |
  g4. s2 |
  g4. s2 |
}

vocal = \relative c {
  \clef treble
  \key c \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \repeat volta 2 {
    \bar "||:"
    f8 g4 g g | d'8 c h c2~ | c4.~ c4 r4 |
    d8 c h as4 h | c8 h as g2~ | g4. r2 | \break
  }

  \repeat volta 2 {
    d'4. es8 d c h | c4.~ c4 r4 |
    d8 c h as4 h | c8 h as g2~ | g4. r2 |
  }
}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  g4. s2 | g4. c2:m | c4.:m s2 |
  as4. s2 | f4.:m g2 | g4. s2 |

  g4. s2 | c4.:m s2 |
  as4. s2 | f4.:m g2 | g4. s2 |
}

\header {
  title = "Море сокол пие"
  composer = Macedonia
}

\score {
  <<
    \new Staff \transpose c g \instrumental
    \new ChordNames \transpose c g \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \transpose c g \vocal
    \new ChordNames \transpose c g \vocalChords
  >>
}
