\version "2.22.1"
\include "deutsch.ly"

melody = \relative c'' {
  \clef treble
  \time 4/4
  \key c \minor

  g8 c es g fis g es g | fis g es g fis es d c | g c es g fis g es g | fis es d c c8 g c4 |
  g8 c es g fis g es g | fis g es g fis es d c | g c es g fis g es g | fis es d c c4 c4 |
  \break

  c4 c d c | d d c c | c4 c d c | d d c c |
  f4 f16 es d8 d8 f c4 | f4 f16 es d8 c g c4 | f4 f16 es d8 d8 f c4 | f4 f16 es d8 c4 c |
  \break

  \repeat volta 2 {
    g'16 a b8 a g a g g4 | fis8. es16 d8 c g'4 g | g16 a b8 a g a g g4 | fis8. es16 d8 c c4 c ^\markup { \with-color #green \bold "D.S." } |
  }
  \break

  g8 c es g fis g es g | fis g es g fis es d c | g c es g fis g es g | fis es d c c8 g c4 |
  g8 c es g fis g es g | fis g es g fis es d c | g c es g fis g es g | fis es d c c4 c4 | \bar "|."
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  c1:m | c1:m | c1:m | g2 c2:m | c1:m | c1:m | c1:m | g2 c2:m |

  c1:m| b2 c2:m | c1:m | b2 g2:m|
  b2. c4:m| b2 c2:m | b2. c4:m | b2 c2:m |

  c1:m | c1:m | c1:m | g2 c2:m

  c1:m | c1:m | c1:m | g2 c2:m | c1:m | c1:m | c1:m | g2 c2:m |
}

\header {
  title = "Gajdica"
  tagline = "05.11.2025"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}

