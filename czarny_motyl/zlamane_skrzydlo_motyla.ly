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

pianoUpper = \relative c''' {
  \key a \minor
  \time 4/4

  c8 c, e c'  h c, e h' | a c, e a  a c, h' c, |
  c'8 c, e c'  h c, e h' | a c, e a  h2 | \bar "|." \break

  c8 c, e c'  h c, e h' | a c, e a  h c, a' c, |
  g' b, d g  b b, c' b, | a' c, e a  a c, h' c,
  c' c, e c'  h c, e h' | a c, e a  h c, a' c, |
  \time 2/4
  g' b, g'16 b, d b' | a8 c, e a | g b, d b' |
  \time 4/4
  a c, b' c, c' c, b' c, | \break

  a' a, c e  a a, c e | a a, c e  a a, g' a, |
  g' g, h e  g g, h e | g g, h e  g g, e' g, |
  \time 2/4
  d' f, d'16 f, a f' | e8 g, h e | d f, a f' |
  \time 4/4
  e h g' h, a' h, h' h, | \break

  c'8 c, e c'  h c, e h' | a c, e a  h c, a' c, |
  h' h, e h' a h, e a | g h, e g a h, g' h, |
  f' a, d f  g a, d g | a d, f a  h d, c' d, |
  d' d, e d' c d, e c' | h d, e c' h4. a16 h |

  c8 d, f c'  h d, e h' |  a c, e a  h c, c' c, |
  d' d, f d'  c d, f c' |  h d, e c' h4. a16 h |
  c8 c, f g  a4. g16 f | a8 d, a' c  h a h gis | a8 c, e a  c4. h16 a |
  c8 c, f g  a4. g16 f | a8 d, a' c  h a h gis | a8 c, e a  c4. h16 a |
  c8 c, f g  a4. g16 f | a8 d, a' c  h e, c' e, |
  d' e, c' e,  d' e, f' e, | <c, e a c>1 \arpeggio \fermata \bar "|."
}

pianoLower = \relative c {
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

  a,4. a'8 e4 a | a,4. a'8 e4 a |
  e,4. e'8 h4 e | e,4. e'8 h4 e |
  \time 2/4
  d,4 d' | e, e' | d, d' |
  \time 4/4
  e,4 e' h e |

  a,4. a'8 e4 a | a,4. a'8 e4 a |
  e,4. e'8 h4 e | e,4. e'8 h4 e |
  d,4. d'8 a4 d | d,4. d'8 a4 d |
  e,4. e'8 h4 e | e,4. e'8 h4 e |

  d,4. d'8 e,4 e' | a,4. a'8 e4 a |
  d,,4. d'8 a4 d | e,4. e'8 h2 |

  f4. f'8 c4 f | d,4. d'8 e,4 e' | a,4. a'8 e4 a |
  f,4. f'8 c4 f | d,4. d'8 e,4 e' | a,4. a'8 e4 a |
  f,4. f'8 c4 f | d,4. d'8 e,4 e' |
  h e h e | <a, c e a>1 \arpeggio |
}

\header {
  title = "Złamane skrzydło motyla"
  tagline = "Czarny motyl, 14.10.2025"
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
    <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff \pianoUpper
      \new Staff \pianoLower
    >>
}

\pageBreak
\score {
  \new Staff \with { instrumentName = "Violin" } \violin
}
