\version "2.22.1"
\include "deutsch.ly"

aMelody = \relative c' {
  \key e \minor
  \repeat volta 2 {
    \bar ".|:" e4 a | a g | a g | fis e | d g | fis e | d e |
  }
  \alternative {
    { e4 e }
    { e8 d e fis }
  } \break

  \repeat volta 2 {
    \bar ".|:" g4. a8 | fis4 e | d e | a g | a g | fis e | d e |
  }
  \alternative {
    { e8 d e fis }
    { e4 e }
  } \break

  \key a \minor
  \repeat volta 2 {
    \bar ".|:" a4 d | d c | d c | h a | g c | h a | g a |
  }
  \alternative {
    { a4 a }
    { a8 g a h }
  } \break
  \repeat volta 2 {
    \bar ".|:" c4. d8 | h4 a | h a | a8 g a h | c4. d8 | h4 a | h a | a a |
  } \break

  \key e \minor
  \repeat volta 2 {
    e4 a | a g | a g | fis e | d g | fis e | d e |
  }
  \alternative {
    { e4 e }
    { e8 d e fis }
  } \break

  \repeat volta 2 {
    \bar ".|:" g4. a8 | fis4 e | d e | a g | a g | fis e | d e |
  }
  \alternative {
    { e8 d e fis }
    { e4 e }
  }
}
aChords = \chordmode {
  a2:m | a2:m | e2:m | e2:m |
  d2 | d2 | e2:m |
  e2:m |
  e2:m |

  g2 | a2 | e2:m | e2:m | a2:m | a2:m | e2:m |
  e2:m |
  e2:m |

  d2:m | d2:m | a2:m | a2:m | g2 | g2 | a2:m
  a2:m
  a2:m

  c2 | d2 | a2:m | a2:m | c2 | d2 | a2:m | a2:m |

  a2:m | a2:m | e2:m | e2:m |
  d2 | d2 | e2:m |
  e2:m |
  e2:m |

  g2 | a2 | e2:m | e2:m | a2:m | a2:m | e2:m |
  e2:m |
  e2:m |
}

bMelody = \relative c'' {
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  \key e \minor

  \repeat volta 2 {
    \times 2/3 { dis8 e fis } \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } | h4 \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } |
    \times 2/3 { dis8 e fis } \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } | h4 \times 2/3 { dis8 e c } | \times 2/3 { h8 h fis } h4 |
  } \break

  \repeat volta 2 {
    h4 c | dis \times 2/3 { c8 h a } | \times 2/3 { dis8 e fis } \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } |
    h4 c | dis \times 2/3 { c8 h a } | \times 2/3 { dis8 e c } \times 2/3 { h8 c a } | \times 2/3 { h8 h fis } h4 |
  } \break

  \mark \markup { \italic { szybciej } }
  \repeat volta 2 {
    \times 2/3 { a8 gis a } \times 2/3 { h8 c a } | h4 \times 2/3 { e8 dis e } |
    \times 2/3 { a,8 gis a } \times 2/3 { h8 c a } | \times 2/3 { h8 h a } \times 2/3 { gis8 gis e } |
    \times 2/3 { a8 gis a } \times 2/3 { h8 c a } | h4 \times 2/3 { e8 dis e } |
    \times 2/3 { a,8 gis a } \times 2/3 { h8 c a } | h4 h |
  } \break
}
bChords = \chordmode {
  h2 | h2 | h2 | h2 | h2 | h2 | h2 | h2 |

  h2 | h2 | h2 | h2 | h2 | h2 | a2:m | h2 |

  a2:m | e2 | a2:m | e2 |
  a2:m | e2 | a2:m | e2 |
}

cMelody = \relative c' {
    a4 h | s2 | s2 | s2 | s2 | s2 | s2 | s2 \bar "||"
}
cChords = \chordmode {
  s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

dMelody = \relative c'' {
  r2 | r2 | r2 | r2 | \break

  \key c \minor
  \mark \markup { \musicglyph "scripts.segno" }
  g8 d'16 c h h h as | h16 as g f g g g d | g8 d'16 c h h h as | h16 as g f g g g8 |
  g8 d'16 c h h h as | h16 as g f g g g d | g8 d'16 c h h h as | h16 as g f g4 | \bar "||" \break

  g8 g16 as h8 h16 as | h16 as g f g g g d | g8 g16 as h8 h16 as | h16 as g f g g g8 |
  g8 g16 as h8 h16 as | h16 as g f g g g d | g8 g16 as h8 h16 as | h16 as g f \mark \markup { "Fine" } g4 | \break

  \key f \major
  e16 f g8 g g16 g | c16 b a g a a a f | e16 f g8 g g16 g | c16 b a b a4 | \break
  e16 f g8 g g16 g | c16 b a g a a a f | e16 f g8 g g16 g | c16 b a b \mark \markup { "D.S. al Fine" } a4 | \bar "||" \break
}
dChords = \chordmode {
  s2 | s2 | s2 | s2 |

  g2 | g2 | g2 | f4:m g4 |
  g2 | g2  | g2 | f4:m g4 |

  g2 | f4:m g4 | g2 | f4:m g4 |
  g2 | f4:m g4  | g2 | f4:m g4 |

  c2 | c4 f4 | c2 | c4 f4 |
  c2 | c4 f4 | c2 | c4 f4 |
}

eRepeatedMelody = \relative c' {
  \repeat volta 2 {
    \times 2/3 {
      e8 f g e e c | e f g e e c | e f g e e c | d d g, d' d g, |
      e'8 f g e e c | e f g e e c | e f g e e c | d d g, } d'4  |
  } \break
  \repeat volta 2 {
    e4 g | \times 2/3 { a8 g f e e c } | g'4 \times 2/3 { a8 g f | e f g e e c } |
    e4 g | \times 2/3 { a8 g f e e c } | g'4 \times 2/3 { a8 g f | e f g } e4 |
  } \break
}
eMelody = \relative c' {
  \key c \major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f

  \eRepeatedMelody

  \repeat volta 2 {
    g'4 a | b a | g fis | g e |
  }
  \repeat volta 2 {
    g fis | g e | g fis | g e |
  } \break
  \repeat volta 2 {
    g4 a | b a | g fis | g e |
  }
  \repeat volta 2 {
    g fis | g e | g fis | g e |
  } \break

  \key g \major
  \transpose c g \eRepeatedMelody

  \key a \minor
  \times 2/3 {
    e8 e d e e d | e e d e e d | e f gis f d f | e4 e8 e e d |
    e8 e d e e d | e e d e e d | e f gis f d f | e4 e8
  } e4 | \break

  \times 2/3 { gis8 a h gis gis f | gis8 a h gis gis f | gis8 a h gis gis f | a4 d,8 } f4 |
  \times 2/3 { gis8 a h gis gis f | gis8 a h gis gis f | gis8 a h gis gis f | f4 e8 } e4 | \break

  \repeat volta 2 {
    \times 2/3 { gis8 a h a gis f } | e4 h' | \times 2/3 { gis8 a h a gis f } | e4 e |
  }
  \times 2/3 { gis8 a h a gis f } | e4 h' | \times 2/3 { gis8 a h a gis f } | e4 e | \break

  \key c \major
  \repeat volta 2 {
    \times 2/3 {
      c'8 c g e' e g, | f'8 f g, e' e g, | c8 c g d' d g, | c8 c d d d g, |
      c8 c g e' e g, | f'8 f g, e' e g, | c8 c g d' d g, |
    }
  }
  \alternative {
    { \times 2/3 { c8 c d h h g } | }
    { d'4 r4 }
  } \break

  \repeat volta 2 {
    \times 2/3 {
      h4 c8 d d c | h4 c8 d d c | d es d c h c | d4 d8 d d g, |
      h4 c8 d d c | h4 c8 d d c | d es d c h c |
    }
  }
  \alternative {
    { \times 2/3 { d4 d8 h h g | } }
    { d'4 r4 }
  } \break

  \repeat volta 2 {
    \times 2/3 {
      f8 e d f e d | f e d c c g | f' e d f e d | c c g c d e |
      f8 e d f e d | f e d c c g | f' e d f e d |
    }
  }
  \alternative {
    { \times 2/3 { c c g } c4 | }
    { c4 r4 | }
  } \break

  \key f \major
  \repeat volta 2 {
    \times 2/3 {
      b'8 a g b a g | b a g f f c | b' a g b a g | f f c f g a | \noBreak
      b8 a g b a g | b a g f f c | b' a g b a g | \noBreak
    }
  }
  \alternative {
    { \times 2/3 { f f c } f4 | }
    { f4 r4 }
  } \break

}

eRepeatedChords = \chordmode {
  c2 | c2 | c2 | g2 | c2 | c2 | c2 | g2 |
  c2 | c2 | c2 | c2 | c2 | c2 | c2 | c2 |
}
eChords = \chordmode {
  \eRepeatedChords

  c2:7 | c2:7 | c2:7 | c2:7 |
  c2:7 | c2:7 | c2:7 | c2:7 |
  c2:7 | c2:7 | c2:7 | c2:7 |
  c2:7 | c2:7 | c2:7 | c2:7 |

  \transpose c g \eRepeatedChords

  e2:7 | e2:7 | d2:m | e2:7 |
  e2:7 | e2:7 | d2:m | e2:7 |

  e2:7 | e2:7 | e2:7 | d2:m | e2:7 | e2:7 | e2:7 | e2:7 |

  d2:m | e2:7 | d2:m | e2:7 |
  d2:m | e2:7 | d2:m | e2:7 |

  c2 | c2 | c2 | g2 | c2 | c2 | c2 |
  g2 |
  g2 |

  g2 | g2 | g2 | g2 | g2 | g2 | g2 |
  g2 |
  g2 |

  g2 | g4 c4 | g2 | c2 |
  g2 | g4 c4 | g2 |
  c2 |
  c2 |

  c2 | c4 f4 | c2 | f2 |
  c2 | c4 f4 | c2 |
  f2 |
  f2 |
}

fMelody = \relative c'' {
  \key g \minor
  \time 7/8
  \set Timing.beatStructure = #'(2 2 3)
  <<f4 c a>> <<f'4 c a>> <<f'4 c a>> <<f'8 c a>> | <<f'4 c a>> <<f'4 c a>> <<f'4 c a>> <<f'8 c a>> |
  <<ges'4 es b>> <<ges'4 es b>> <<ges'4 es b>> <<ges'8 es b>> | <<f'4 c a>> <<f'4 c a>> <<f'4 c a>> r8 |
  \break

  \mark \markup { \musicglyph "scripts.segno" }
  \repeat volta 2 {
    b8 c a c b a c | \noBreak c b a f g g d | \noBreak b'8 c a c b a c | \noBreak c b a f g g d | \noBreak
    b'8 c a c b a c | \noBreak c b a f g g d | \noBreak f f e f g as f | \noBreak g g g d' g, g d |
  }
  \break

  \repeat volta 2 {
    g4 c8 d d c d | g,4 b8 c c b c | g4 a8 b b a g | g a a f g g d | \noBreak
    g4 c8 d d c d | g,4 b8 c c b c | g4 a8 b b a g | g a a f g4. |
  }
  \break

  c2.. | c2.. | d8 d d b c c a | b b b g a a f |
  g'8 f f es es es d | c b b a a a g | f es es d d d c | b a a g g4. |
  \break

  \repeat volta 2 {
    g'4 a8 b b a g | \noBreak g a a f g g e | \noBreak f4 e8 f g as f | \noBreak g g g d' g, g d | \noBreak
    g4 a8 b b a g | \noBreak g a a f g g e | \noBreak f4 e8 f g as f | \noBreak g g g d' g,4. | \noBreak
  }
  \break

  \repeat volta 2 {
    g8 d a' b b a g | \noBreak g8 d a' b b a g | \noBreak g8 d a' b b a g | \noBreak g8 a a f g g d | \noBreak
    g8 d a' b b a g | \noBreak g8 d a' b b a g | \noBreak g8 d a' b b a g \mark \markup { "D.S. al " \musicglyph "scripts.segno" } | \noBreak g8 a a f g4. | \noBreak
  }

}
fChords = \chordmode {
  f2.. |  f2.. | es2..:m | f2.. |

  f2.. | f2 g4.:m | f2.. | f2 g4.:m | f2.. | f2 g4.:m | f2..:m | g2..:m |
  g2..:m | c2..:m | es2.. | f2 g4.:m | g2..:m | c2..:m | es2.. | f2 g4.:m |

  f2.. | f2.. | g2..:m | g2:m f4. | g2..:m | c2..:m | f2.. | g2..:m |

  g2..:m | f2 c4. | f2..:m | g2..:m | g2..:m | f2 c4. | f2..:m | g2..:m |

  g2..:m | g2..:m | g2..:m | f2 g4.:m | g2..:m | g2..:m | g2..:m | f2 g4.:m |
}

melody = {
  \clef treble
  \time 2/4

  \mark \markup { \bold { Bela Rado } }
  \aMelody \bar "||" \break
  \mark \markup { \bold { Powolniak } }
  \bMelody \break

  \mark \markup { \bold { Sitan Kamen } }
  \cMelody \break

  \pageBreak
  \mark \markup { \bold { Podskoki } }
  \dMelody \break

  \mark \markup { \bold { Czaczak } }
  \eMelody \break

  \mark \markup { \bold { Bugarka } }
  \fMelody
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \aChords
  \bChords
  \cChords
  \dChords
  \eChords
  \fChords
}

\header {
  title = "Leskovacke igre"
  tagline = "12.03.2023"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}
