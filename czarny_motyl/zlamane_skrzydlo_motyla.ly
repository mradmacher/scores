\version "2.22.1"
\include "deutsch.ly"

violin = \relative c''' {
  r1 | r1 | e1~ | e1 |

  \break

  e1~ | e1 |
  d2 c4 b | a1~ |
  a1~ | a1 |
  \time 2/4
  b4 d | e2 | d4 c8 b |
  \time 4/4
  a1~ | a1~ | a1 |
  g1~ | g1 |
  \time 2/4
  f4 a | e2 | d4 f |
  \time 4/4
  e4 h' c d
  \break

  e2 d | c1 |
  \appoggiatura{ h16 c } d2 c | h1 |
  \appoggiatura{ a16 h } | c2. a4 | e'2. d8 c | h2. c8 d | h1 |
  \break

  \appoggiatura { a16 h } c8 h c a~ a2 | \appoggiatura { a16 h } c8 h c a~ a2 |
  \appoggiatura { a16 h } c8 h c e~ e4 d8 c | h1 |
  \appoggiatura { c16 d } e2 d | c1 | \appoggiatura { d16 e } f2 e | d1 |
  \appoggiatura { c16 d } e8 d e c~ c2 |
  \appoggiatura { c16 d } e8 d e c d c d f | e8 d e c~ c2 |
  \appoggiatura { c16 d } e8 d e c~ c2 |
  \appoggiatura { c16 d } e8 d e c d c d h | c8 h d c~ c2 |

  \appoggiatura { a16 h } c8 h d c~ c2 | \appoggiatura { a16 h } c8 h c e d4 c | d4 e f d | e1~ | e1\fermata |
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
  a c, b' c, c' c, b' c, |
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
  a,4 a' e a |

}
\header {
  title = "Złamane skrzydło motyla"
  tagline = "Czarny motyl"
}
\score {
  \new Staff \violin
}

%\score {
%  \new PianoStaff
%    <<
%      \new Staff \pianoR
%      \new Staff \pianoL
%    >>
%}
