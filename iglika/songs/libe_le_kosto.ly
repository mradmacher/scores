\version "2.22.1"
\include "deutsch.ly"

instrumentalUpper = \relative c'' {
  \clef treble
  \key c \major
  \time 7/16
  \set Timing.beatStructure = #'(3 4)

  g8 a16 b a g a | a8 b16 a g f8 | a8. f8 g | f16 e d e f g8 |
  g8 a16 b a g a | a8 b16 a g f8 | a8. f8 g | f8. e8 e | \partial 8. e8. | \bar "||"
}
instrumentalLower = \relative c' {
  \clef treble
  \key c \major
  \time 7/16
  \set Timing.beatStructure = #'(3 4)

  e8 f16 g f e f | f8 g16 f e d8 | f8. d8 e | d16 c h c16 d e8 |
  e8 f16 g f e f | f8 g16 f e d8 | f8. d8 e | d8. c8 c | \partial 8. c8. | \bar "||"
}

instrumentalChords = \chordmode {
  \germanChords

  c4..:7 |
  f4.. |
  g4.. |
  c4.. |

  c4..:7 |
  f4.. |
  d8.:m g4 |
  g8. c4 |
  c8. |
}


vocal = \relative c'' {
  \clef treble
  \key c \major
  \time 7/16
  \set Timing.beatStructure = #'(3 2 2)

  \partial 4 g8 g |
  \repeat volta 2 {
    e8. g8 g | a8. g4 | c,8. d8 e | f8. d8 e | d8. c4 |
  }
  \alternative {
    { c8. g'8 g | }
    { c,8. g8 c | \bar "||" }
  }
  \break

  \repeat volta 2 {
    c8. d8 e | f8. e4 | c8. d8 e | f8. d8 e | d8. c4 |
  }
  \alternative {
    { c8. g8 c | }
    { \partial 8. c8. | \bar "||" }
  }
}

vocalChords = \chordmode {
  \germanChords

  \partial 4 s4 |
  c4.. | f8. c4 | c4.. | f8. g4 | g8. c4 |
  c4.. |
  c4.. |

  c4.. | f8. c4 | a4..:m | d8.:m g4 | g8. c4 |
  c4.. |
  \partial 8. c8. |
}

\header {
  title = "Либе ле Косто"
  tagline = "01.2023"
}

\score {
  <<
    \new Staff {
      \context Voice = sop {
        <<
          \instrumentalUpper
          \instrumentalLower
        >>
      }
    }
    \new ChordNames \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \vocal
    \new ChordNames \vocalChords
  >>
}
