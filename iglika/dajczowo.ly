\version "2.16.2"
\include "deutsch.ly"

melody_i = \relative c'' {
  \repeat volta 2 {
    \mark \markup { \musicglyph #"scripts.segno" }
    cis4 d4 e4 e4. |
    cis4 d4 e4 e4. |
    fis8 e d4 d8 h cis d e |
    cis4 cis8 a cis d e4. |

    cis4 d4 e4 e4. |
    cis4 d4 e4 e4. |
    fis8 e d4 d8 h cis d e |
    cis4 cis8 a cis a cis4. | \break
  }
}

harmonies_i = \chordmode {
  a2. s4. | s2. s4. |
  e2. s4. | a2. s4. |

  a2. s4. | s2. s4. |
  e2. s4. | a2. s4. |
}

melody_ii = \relative c'' {
  \repeat volta 2 {
    fis8 e d4 d8 h cis d e |
    cis4 cis8 a cis d e4. |
    fis8 e d4 d8 h cis d e |
    cis4 fis8 fis g fis fis e d |

    fis8 e d4 d8 h cis d e |
    cis4 cis8 a cis d e4. |
    fis8 e d4 d8 h cis d e |
    cis4 cis8 a cis a cis4. | \break
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \mark \markup { \musicglyph #"scripts.segno" "Fine" }
  }
}

harmonies_ii = \chordmode {
  e2. s4. | a2. s4. |
  e2. s4. | a2. s4. |
  e2. s4. | a2. s4. |
  e2. s4. | a2. s4. |
}

melody_iii = \relative c'' {
  \repeat volta 2 {
    dis8 e   e dis   c h   a4 e8 |
    h'8 c   c h   a gis   fis4 e8 |
    gis8 a   h a   a gis   e fis gis |
    a8 e   a4  a8 e  a4. |

    fis'8 e   e dis   c h   a4 e8 |
    h'8 c   c h   a gis   fis4 e8 |
    gis8 a   h a   a gis   e fis g |
    fis8 cis  fis4  fis8 cis  fis4. | \break
  }
}

harmonies_iii = \chordmode {
  h2. s4. |
  s2. s4. |
  e2. s4. |
  a2.:m s4. |

  h2. s4. |
  s2. s4. |
  e2. e4.:m |
  fis2.:m s4. |
}

melody_iv = \relative c'' {
  \repeat volta 2 {
    a4 h a  e8 fis gis |
    a4 a a a4. |
    a4 h a  e8 fis g |
    fis4 fis  g8 e  fis4. |

    a4 h a  e8 fis gis |
    a4 a a a4. |
    a4 h a  e8 fis g |
    fis4 fis  g8 e  fis4. | \break
  }
}
harmonies_iv = \chordmode {
  a2. s4. |
  s2. s4. |
  s2. e4.:m |
  fis2.:m s4. |

  a2. s4. |
  s2. s4. |
  s2. e4.:m |
  fis2.:m s4. |
}

melody_v = \relative c'' {
  \repeat volta 2 {
    gis4   gis8 ais  h ais  h4 e,8 |
    h'4  a8 gis  gis ais  h cis e, |
    gis4   gis8 ais  h ais  h4 e,8 |
    h'4  a8 gis  gis fis  gis e fis |

    gis4   gis8 ais  h ais  h4 e,8 |
    h'4  a8 gis  gis ais  h cis e, |
    gis4   gis8 ais  h ais  h4 e,8 |
  }
  \alternative { {
    h'4  a8 gis  gis fis  gis4. |
  } {
    h4  a8 gis  gis ais  h cis cis | \break
  } }
}

harmonies_v = \chordmode {
  gis2.:m s4. |
  s2. cis4.:m |
  gis2.:m s4. |
  s2. s4. |

  gis2.:m s4. |
  s2. cis4.:m |
  gis2.:m s4. |

  s2. s4. |
  s2. s4. |
}

melody_vi = \relative c'' {
  \repeat volta 2 {
    cis4  cis8 dis  e fis  fis e dis |
    cis4  d8 h  cis4  h8 ais gis |
    cis4  cis8 dis  e fis  fis e dis |
    cis4  d8 h  cis4  cis4. |

    cis4  cis8 dis  e fis  fis e dis |
    cis4  d8 h  cis4  h8 ais gis |
    cis4  cis8 dis  e fis  fis e dis |
    cis4  d8 h  cis4
    \mark \markup { "D.S. al Fine" }
    cis4. | \break
  }
}
harmonies_vi = \chordmode {
  cis2.:m s4. |
  s4 h4:m cis4:m s4. |
  cis2.:m s4. |
  s4 h4:m cis4:m s4. |

  cis2.:m s4. |
  s4 h4:m cis4:m s4. |
  cis2.:m s4. |
  s4 h4:m cis4:m s4. |
}

\header { title = "Дайчово" }
\score{
  <<
    \new Staff \transpose a g {
      \clef treble
      \key a \major
      \time 9/8
      \set Timing.beatStructure = #'(2 2 2 3)

      \melody_i
      \melody_ii
      \melody_iii
      \melody_iv
      \key gis \minor
      \melody_v
      \key cis \minor
      \melody_vi
    }

    \new ChordNames \transpose a g {
      \germanChords
      \set chordNameLowercaseMinor = ##t

      \harmonies_i
      \harmonies_ii
      \harmonies_iii
      \harmonies_iv
      \harmonies_v
      \harmonies_vi
    }
  >>
}

