\version "2.22.1"
\include "deutsch.ly"

clarinet = \relative c''' {
  \clef treble
  \key a \minor
  \time 6/8

  \mark \markup { "ad libitum" }
  g4.\fermata~ g8 fis e \tuplet 3/2 { fis16 e d } \tuplet 3/2 { e d c }  \tuplet 3/2 { d c h }  \tuplet 3/2 { c h a }
  \tuplet 3/2 { h a g }  \tuplet 3/2 { a g fis }  \tuplet 3/2 { g fis e } \tuplet 3/2 { fis e d } \tuplet 3/2 { e d c } d8 c h~ h2.\fermata \bar "|."
  \break

  \compressMMRests { R2.*4 | }
  c4. h | a h | c h | a2. |

  e'4. d8 e f | f8 e4~ e4 d8 | d4. f8 e d | d4. e | e4. d | c h | c4. h8 c d | c2. |

  \break
  e8 a c~ c h d~ | d c e~ e d h~ | h8 c4~ c8 h4~ | h8 a4~ a8 e4~ |
  e8 a c~ c h d~ | d c e~ e d f~ | f8 e4 d8 h4 | h8 c4 c8 h4 |
  \compressMMRests { R2.*8 | }

  \break
  e4 e8 d8 e f | f8 e4~ e4 d8 | d4 d8 f8 e d | d4. e | e4 e8 fis8 e fis8 | g fis e d4 d8 | c4 c8 d8 c h | a4. h8 a h | c4 c8 d8 c h | a2. |

  \break
  c4 c8 h c d | c4 c8 d8 c h | c4 c8 h c d | c4. d | e4 e8 d e f | e4 e8 f8 e d | e4 e8 d8 e f | e4. g4. |
  a4 a8 h a g | a4 a8 g8 a h | a4 a8 h a g | a4. h | c4 c8 d c h | c4 c8 h8 c d | c4 c8 d8 c8 h | c4. h4. |
  c16 h a g e d c8 d e | a8. g16 a8 h a h | c16 h a g e d c8 d e | a4. g4. |
  c16 h a g e d c8 d e | a8. g16 a8 h a h | c8. h16 c8 d c h | c4. h4. |
  \break
  a4. g | e2. | a4. h | c2. | c4. h | a2. | a4. h | e,2. |
  \compressMMRests { R2.*8 | }

  \break
  c4 c8 h8 c d | d4. c4 h8 | h4 h8 d8 c h | h4. c | e4 e8 fis8 e fis | g fis e d4 d8 | c4 c8 h8 c d | e8 d8 a h4 h8 | c4 c8 d8 c h | a2. |
  \break
  e'4 e8 d c h | a4. h8 a h | e4 e8 d c h | c4. d8 c d | e4 e8 d c h | a4. h8 a h | c4 c8 d8 c h | a2.~ | a2.\fermata |
}

\header {
  title = "Czarny motyl"
  composer = "Czarny motyl"
  tagline = "2025-03-22"
}
\score {
  \clarinet
}
