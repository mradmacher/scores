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

  \mark \markup { \italic { wolniej } }
  \repeat volta 2 {
    \times 2/3 { dis8 e fis } \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } | h4 \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } |
    \times 2/3 { dis8 e fis } \times 2/3 { dis8 e c } | dis4 \times 2/3 { c8 h a } | h4 \times 2/3 { dis8 e c } | \times 2/3 { h8 h fis } h4 |
  } \break

}
bChords = \chordmode {
  h2 | h2 | h2 | h2 | h2 | h2 | h2 | h2 |

  h2 | h2 | h2 | h2 | h2 | h2 | a2:m | h2 |

  a2:m | e2 | a2:m | e2 |
  a2:m | e2 | a2:m | e2 |

  h2 | h2 | h2 | h2 | h2 | h2 | h2 | h2 |
}

cMelody = \relative c' {
    a4 h | s2 | s2 | s2 | s2 | s2 | s2 | s2 \bar "||"
}
cChords = \chordmode {
  s2 | s2 | s2 | s2 | s2 | s2 | s2 | s2 |
}

dMelody = \relative c'' {
  \key c \minor
  \repeat volta 2 {
    g8 d'16 c h h h as | h16 as g f g g g d | g8 d'16 c h h h as | h16 as g f g g g8 |
    g8 d'16 c h h h as | h16 as g f g g g d | g8 d'16 c h h h as | h16 as g f g4 |
  } \break

  \repeat volta 2 {
    g8 g16 as h8 h16 as | h16 as g f g g g d | g8 g16 as h8 h16 as | h16 as g f g g g8 |
    g8 g16 as h8 h16 as | h16 as g f g g g d | g8 g16 as h8 h16 as | h16 as g f g4 |
  } \break

  \repeat volta 2 {
    \key f \major
    e16 f g8 g g16 g | c16 b a g a a a f | e16 f g8 g g16 g | c16 b a b a4 |
  } \break

  \key c \minor
  \repeat volta 2 {
    g8 d'16 c h h h as | h16 as g f g g g d | g8 d'16 c h h h as | h16 as g f g g g8 |
    g8 d'16 c h h h as | h16 as g f g g g d | g8 d'16 c h h h as | h16 as g f g4 |
  } \break
}
dChords = \chordmode {
  g2 | g2 | g2 | f4:m g4 |
  g2 | g2  | g2 | f4:m g4 |

  g2 | f4:m g4 | g2 | f4:m g4 |
  g2 | f4:m g4  | g2 | f4:m g4 |

  c2 | c4 f4 | c2 | c4 f4 |

  g2 | g2 | g2 | f4:m g4 |
  g2 | g2  | g2 | f4:m g4 |
}

eMelody = \relative c'' {
  \key c \major
  s2
}
eChords = \chordmode {
  s2
}

fMelody = \relative c'' {
  \key g \minor
  s2
}
fChords = \chordmode {
  s2
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
  \fMelody \break
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
  tagline = "03.01.2023"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}
