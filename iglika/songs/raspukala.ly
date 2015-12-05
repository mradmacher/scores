\version "2.16.2"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key e \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \repeat volta 2 {
    g4 fis8  g a  fis d | e4 d8  cis d  e fis | g4 fis8  g a  fis d |
  }
  \alternative {{
    e4 r8  h' c h a |
  }{
    e4.~ e2 |
  }}
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  e4.:m d2 |
  e4.:m s2 |
  e4.:m d2 |

  e4.:m s2 |
  e4.:m s2 |
}


vocal = \relative c'' {
  \clef treble
  \key e \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \repeat volta 2 {
    g4( fis8) a4 d, |
    e4.~e2 |

    a4 a8 a4 a |
    g4( fis8) e( d) e( fis) |
    g4 r8 a4 a |
    g4( fis8) a4 d, |
    e4.~e2 |

    fis4 fis8 fis4 a |
    g4( fis8) a4 d, |
    e4.~e2 |
    r4. r2 |
  }
}

vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  e4.:m d2 |
  e4.:m a2 |

  d4. s2 |
  a4. s2 |
  e4.:m a2 |
  a4. d2  |
  a4. s2 |

  d4. s2 |
  d4. s2 |
  e4.:m s2 |
  e4.:m s2 |
}

\header {
  title = "Распукала шар планина"
}

\score {
  <<
    \new Staff \transpose e d \instrumental
    \new ChordNames \transpose e d \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \transpose e d \vocal
    \new ChordNames \transpose e d \vocalChords
  >>
}
