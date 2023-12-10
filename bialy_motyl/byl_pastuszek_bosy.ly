\version "2.22.1"
\include "deutsch.ly"

guitar = \relative c' {
  \key c \major
  c8 g' e' g, c, g' e' g, | d8 a' f' a, d, a' f' a, | g,8 d' h' d, g, d' h' d, |
  c8 g' e' g, c, g' e' g, | a,8 e' c' e, a, e' c' e, | d8 a' f' a, d, a' f' a, |
  g,8 d' h' d, g, d' h' d, | c8 g' e' g, c,2 | g'8 g a g f4 d | c e c2 |

  \repeat volta 2 {
    c8 g' e' g, c, g' e' g, | d8 a' f' a, d, a' f' a, | g,8 d' h' d, g, d' h' d, |
    c8 g' e' g, c, g' e' g, | a,8 e' c' e, a, e' c' e, | d8 a' f' a, d, a' f' a, |
    g,8 d' h' d, g, d' h' d, |
  }
  \alternative {
    { c8 g' e' g, c, g' e' g, | }
    { c,8 g' e' g, c,2 | }
  }
  g'8 g a g f4 d | c e c2 | \bar "||"
}

\header {
  title = "Był pastuszek bosy"
  tagline = "2023"
}
\score {
  <<
    \new Staff \guitar
  >>
}
