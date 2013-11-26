\version "2.16.2"
\include "deutsch.ly"

melody_a = \relative c'' {
  \repeat volta 2 {
    d4 a b8 b16 a g8 | \noBreak
    a4 f a8 f16 e d8 | \noBreak
    e8 f g16 g f8 a f16 e d8 | \noBreak
  }
  \alternative {
    { e f g16 g f e d8 e16 f g8 | \noBreak }
    { e8 f g16 g f e d a d4 | \break }
  }
}
harmonies_a = \chordmode {
  d2:m g4.:m |
  d2..:m |
  a2 d4.:m |
  a2 d4.:m |
  a2 d4.:m |
}

melody_b = \relative c' {
  \repeat volta 2 {
    a4 d e16 f f e d8 | \noBreak
    e16 f f8 e16 f f8 g16 g f e d8 | \noBreak
    a4 d e16 f f e d8 | \noBreak
  }
  \alternative {
    { d16 f f8 g16 g f e d a d4 | \noBreak }
    { e16 f f8 g16 g f e d8 e16 f g8 | \break }
  }
}
harmonies_b = \chordmode {
  d2..:m |
  a2.. |
  d2..:m |
  a2 d4.:m |
  a2 d4.:m |
}

melody_c = \relative c'' {
  \repeat volta 2 {
    a16 b g8 g g b8 b16 a g8 | \noBreak
    a16 a f8 f f a8 f16 e d8 | \noBreak
    a4 d e16 f f e d8 | \noBreak
  }
  \alternative {
    { e8 f16 f g g f e d8 e16 f g8 | \noBreak }
    { e8 f16 f g g f e d a d4 | \break }
  }
}
harmonies_c = \chordmode {
  g2..:m |
  d2..:m |
  d2..:m |
  a2 d4.:m |
  a2 d4.:m |
}

melody_d = \relative c' {
  \repeat volta 2 {
    a16 f' e d d a d d f a, f' e d8 | \noBreak
    d16 b' a g g d g g b d, b' a g8 | \break
    d'8 b c a b b16 a g8 | \noBreak
  }
  \alternative {
    { a8 f g e f f16 e d8 | \noBreak }
    { a'8 f g f16 e d16 a d4 | \break }
  }
}
harmonies_d = \chordmode {
  d2..:m |
  g2..:m |
  g2..:m |
  d2..:m |
  d2..:m |
}

melody_e = \relative c'' {
  \repeat volta 2 {
    d16 d d c' b a g b a a a g fis g | \noBreak
    fis16 d fis g a a g fis fis d fis g a8 | \break
    d,16 d d c' b a g b a a a g fis g | \noBreak
    fis16 d fis g a a g fis fis d fis4 | \break
  }
}
harmonies_e = \chordmode {
  d2.. |
  s2.. |
  d2.. |
  s2.. |
}

melody_f = \relative c'' {
  \repeat volta 2 {
    d16 es es g, es' g, h c d es fis es d8 | \noBreak
    d16 es fis g a d, b' a g b a4 | \break
    d,8 cis'16 d d c b a c b   a16 a g8 | \noBreak
    a16 b c8 c16 b a g fis d fis4 | \break
  }
}
harmonies_f = \chordmode {
  c2:m c8:m c4:m |
  d2 d8 d4 |
  d2.. |
  s4 c4:m d4. |
}

melody_g = \relative c'' {
  \repeat volta 2 {
    d8 cis'16 d d c b a c b   a16 a g8  | \noBreak
    a16 b c8 c16 b a g fis8 fis16 g a8 | \break
    d,8 cis'16 d d c b a c b   a16 a g8  | \noBreak
    a16 b c8 c16 b a g fis16 d fis4 | \break
  }
}
harmonies_g = \chordmode {
  d2.. |
  s4 c4:m d4. |
  d2.. |
  s4 c4:m d4. |
}

\header { title = "Еленино" }
\score {
  <<
    \new Staff {
      \key d \minor
      \time 7/8
      \set Timing.beatStructure = #'(2 2 3)

      \melody_a
      \melody_b
      \melody_c
      \melody_d
      \melody_e
      \melody_f
      \melody_g
    }

    \new ChordNames {
      \germanChords
      \set chordNameLowercaseMinor = ##t

      \harmonies_a
      \harmonies_b
      \harmonies_c
      \harmonies_d
      \harmonies_e
      \harmonies_f
      \harmonies_g
    }
  >>
}

