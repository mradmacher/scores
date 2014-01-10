\version "2.16.2"
\include "deutsch.ly"

melody = \relative c'' {
  \time 7/8
  \set Timing.beatStructure = #'(2 2 3)

  \repeat volta 2 {
    a8 e c'4\mordent c8 b g | a8 e d'4\mordent d8 c b |
    a8 e c'4\mordent c8 b g | a8 a a g c d e |
    a,8 e c'4\mordent c8 b g | a8 e d'4\mordent d8 c b |
    a8 e c'4\mordent c8 b g |
  }
  \alternative {
    { a8 a a e a a e | } { a8 a a e a a g }
  }
  \break

  \repeat volta 2 {
    c8^\markup { \musicglyph #"scripts.segno" } d e4 f8 f e | e8 d e4 e8 d c | d8 d c\mordent c c b g |
    a8 a d\mordent d c d e | c8 d e4 f8 g, e' |
    e8 d e g, e' d c | d8 g, c\mordent c c b g | a8 a a e a a g |
  }
  \break

  \repeat volta 2 {
    d'8 g, c\mordent c c b g | a8 a d\mordent d c d e |
    d8 d c\mordent c c b g | a8 a a g c d e |
    d8 g, c\mordent c c b g | a8 a d\mordent d c d e |
    d8 d c\mordent c c b g |
  }
  \alternative {
    { a8 a a e a a g | } { a8 a a e a8 a e }
  }
  \break

  \repeat volta 2 {
    a8 e c'4\mordent c8 b g | a8 e d'4\mordent d8 c b |
    a8 e c'4\mordent c8 b g | a8 a a g c d e |
    a,8 e c'4\mordent c8 b g | a8 e d'4\mordent d8 c b |
    a8 e c'4\mordent c8 b g |
  }
  \alternative {
    { a8 a a e a a e | } { a8 a a e a a g^"D.S."_"Fine" }
  }
  \break

  \repeat volta 2 {
    h8\mordent^\markup{ \musicglyph #"scripts.segno" } h c\mordent c g h\mordent h | c8\mordent c c g c d es |
    g8 fis e e c d es | d d d d c h g |
    h8\mordent h c\mordent c g h\mordent h | c8\mordent c c g c d es |
    d8 d c h g a b |
  }
  \alternative {
    { a8 a a4 a8 a g } { a8 a a4 a4. }
  }
  \break

  \repeat volta 2 {
     d,8 c c h g a b | a8 a e' a, e' e c | d8 c c h g a b | a8 a a e e' e c |
     d8 c c h g a b | a8 a e' a, e' e c | d8 c c h g a b |
  }
  \alternative {
    { a8 a a e a a e } { a8 a a e a4.^"D.S."}
  }
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  a2..:m |
  a4:m d4:m s4. |
  a2..:m |
  a2..:m |
  a2..:m |
  a4:m d4:m s4. |
  a2..:m |
  a2..:m |
  a2..:m |

  c2.. |
  c2.. |
  d2..:m |
  a2..:m |
  c2.. |
  c2.. |
  d2..:m |
  a2..:m |

  a2..:m |
  d2..:m |
  a2..:m |
  a2..:m |
  a2..:m |
  d2..:m |
  a2..:m |
  a2..:m |
  a2..:m |

  a2..:m |
  d2..:m |
  a2..:m |
  a2..:m |
  a2..:m |
  d2..:m |
  a2..:m |
  a2..:m |
  a2..:m |

  g4 c:m g4. |
  c2..:m |
  c2..:m |
  d2..:m |
  g4 c:m g4. |
  c2..:m |
  d2:m g4.:m |
  a2..:m |
  a2..:m |

  d2:m g4.:m |
  a2..:m |
  d2:m g4.:m |
  a2..:m |
  d2:m g4.:m |
  a2..:m |
  d2:m g4.:m |
  a2..:m |
  a2..:m |
}

\header { title = "Ръченица" }
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}

