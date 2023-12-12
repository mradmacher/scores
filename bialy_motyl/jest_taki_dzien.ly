\version "2.22.1"
\include "deutsch.ly"


accG = \relative c' {
  \key c \major

  e2 e8 d e c | g2 e'8 d e c | g'2 e8 d e c | g2 e'8 d e c |
  \break

  \repeat volta 2 {
    g2 c8 e4 g8( | g2.) c,8 d | e8 c( c2) e8 c | e2 d |
    g,2 c8 e4 g8( | g2.) c,8 d | e8 c( c2) e8 c | e2 d |
  }
  \break
  a'8 f4. g8 e4. | a8 f4. g8 e4. | a8 f4. e8 g4. | a4 f e d | \break
  a'8 f4. g8 e4. | a8 f4. g8 e4. | a,8 c4. e8 g4. | a8 f4 e8 d c h4 | c2 r2 |
}

accD = \relative c {
  \clef bass

  c1 | c1 | c1 | c1 |

  c1 | e1 | a,1 | g1 |
  c1 | e1 | a,1 | g1 |

  f'2 c | f2 c | f2 c | d2 g2 |
  f2 c | f2 c | f2 c | d2 g2 | c,1 |
}

guitar = \relative c' {
  \key c \major

  c8 g' e' g, c, g' e' g, | c,8 g' e' g, c, g' e' g, |
  c,8 g' e' g, c, g' e' g, | c,8 g' e' g, c, g' e' g, | \break

  \repeat volta 2 {
    c,8 g' e' g, c, g' e' g, | e,8 h' g' h, e, h' g' h, |
    a8 e' c' e, a, e' c' e, | g,8 d' h' d, g, d' h' d, |
    c8 g' e' g, c, g' e' g, | e,8 h' g' h, e, h' g' h, |
    a8 e' c' e, a, e' c' e, | g,8 d' h' d, g, d' h' d, |
  }

  f,8 c' a' c, c8 g' e' g, | f,8 c' a' c, c8 g' e' g, |
  f,8 c' a' c, c8 g' e' g, | d8 a' f' a, g,8 d' h' d, |
  f,8 c' a' c, c8 g' e' g, | f,8 c' a' c, c8 g' e' g, |
  f,8 c' a' c, c8 g' e' g, | d8 a' f' a, g,8 d' h' d, | c8 g' e' g, c,2 |
}

\header {
  title = "Jest taki dzień"
  tagline = "2023"
}
\score {
  <<
    \new PianoStaff \with { instrumentName = "Akordeon" }
      <<
        \new Staff \accG
        \new Staff \accD
      >>
%    \new Staff \guitar
  >>
}
