\version "2.22.1"
\include "deutsch.ly"

violin = \relative c''' {
  e1~ | e1~ | e1~ | e1 |

  e1~ | e1 |
  d2 c4 b | a1~ |
  a1~ | a1 |
  \time 2/4
  c4 d | a2 | g4 b |
  \time 4/4
  a1
}

pianoR = \relative c''' {
  \key a \minor
  \time 4/4

  c8 c, e c'  h c, e h' | a c, e a  a c, h' c, |
  c'8 c, e c'  h c, e h' | a c, e a  h2 | \bar "|."

  c8 c, e c'  h c, e h' | a c, e a  h c, a' c, |
  g' b, d g  b b, c' b, | a' c, e a  a c, b' c,
  c' c, e c'  h c, e h' | a c, e a  h c, a' c, |
  \time 2/4
  g' b, g'16 b, d b' | a8 c, e a | g b, d b' |
  \time 4/4
  a c, h' c, c' c, h' c, |
}

pianoL = \relative c {
  \clef bass
  \time 4/4

  a4. a'8 e4 a | a,4. a'8 e4 a
  a,4. a'8 e4 a | a,4. a'8 e2 |

  a,4. a'8 e4 a | a,4. a'8 e4 a |
  g,4. g'8 d4 g | a,4. a'8 e4 a |
  a,4. a'8 e4 a | a,4. a'8 e4 a |
  \time 2/4
  g,4 g' | a, a' | g, g' |
  \time 4/4
  a,4. a'8 e4 a |

}
\header {
  title = "Złamane skrzydło motyla"
  tagline = "Czarny motyl"
}
\score {
  <<
    \new Staff \violin
    \new PianoStaff
      <<
        \new Staff \pianoR
        \new Staff \pianoL
      >>
  >>
}
