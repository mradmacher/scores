\version "2.16.2"
\include "deutsch.ly"

A = \relative c'' {
  \repeat volta 2 {
    \times 2/3 {
      h8 d, fis  gis a h | \noBreak
      h8 a fis'  fis e fis, | \noBreak
      d'8 cis cis  d cis cis | \noBreak
      d8 cis cis   h h a | \noBreak
    }

    \times 2/3 { cis8 cis e, }  fis8 fis | \noBreak
    fis8 fis \times 2/3 { fis fis e } | \noBreak
    \times 2/3 {
      a8 gis gis   a h h | \noBreak
      h8 gis a  h h a | \break
    }

    \times 2/3 {
      h8 d, fis  gis a h | \noBreak
      h8 a fis'  fis e fis, | \noBreak
      d'8 cis cis  d cis cis | \noBreak
      d8 cis cis   h h a | \noBreak
    }

    \times 2/3 { cis8 cis e, } a8 a | \noBreak
    \times 2/3 {
      fis'8 e e   d d a | \noBreak
      d8 cis cis fis, a fis' | \noBreak
      h,8 h fis
    } h4 |
  }
}

AChords = \chordmode {
  h2:m |
  s2 |
  s2 |
  s2 |

  s2 |
  s2 |
  s2 |
  s2 |

  h2:m |
  s2 |
  s2 |
  s2 |

  a2 |
  e2 |
  fis2:m |
  h2:m |
}

B = \relative c'' {
  \repeat volta 2 {
    \times 2/3 {
      d8 e fis  fis e fis | \noBreak
      fis8 e d  e e fis | \noBreak
      d8 e a,   d cis cis | \noBreak
      d8 cis cis   h h fis | \noBreak
      a8 h cis  cis h fis' | \noBreak
      fis8 e a,   d cis cis | \break
      a8 h h   h gis a | \noBreak
      fis' e e  d d a | \noBreak
    }

    \times 2/3 {
      d8 e fis   fis e a | \noBreak
      a8 g e   fis d e | \noBreak
      cis8 d a  d cis cis | \noBreak
      d8 cis cis   h h fis | \break
    }
  } \alternative {
    {
      \times 2/3 {
        a8 h cis   cis h fis' | \noBreak
        fis8 e e  d d a | \noBreak
        d8 cis cis   fis, a fis' | \noBreak
        h, h fis   h h a | \noBreak
      }
    } {
      \times 2/3 {
        a8 h cis  cis h fis' | \noBreak
        fis8 e a,   d cis cis | \noBreak
        a8 h h   h gis a | \noBreak
        h h fis' h,4. |
      }
    }
  }
}

BChords = \chordmode {
  d2 |
  s2 |
  e2 |
  h2:m |
  s2 |
  s2 |
  e2 |
  d2 |

  s2 |
  s2 |
  e2 |
  h2:m |

  h2:m |
  s2 |
  fis2:m |
  h2:m |

  h2:m |
  s2 |
  e2 |
  h2:m |
}

C = \relative c'' {
  \repeat volta 2 {
    \relative c'' {
      \times 2/3 {
        a8 h cis   cis h fis' |
        fis8 e a,  d cis cis |
        a8 h h   h gis a |
      }

      \times 2/3 { d8 cis cis   a a e }

      \times 2/3 {
        a8 h cis   cis h fis' |
        fis8 e a,  d cis cis |
        a8 h h   h gis a |
      }
    }
  } \alternative { {
      \times 2/3 { h8 h fis'  h, h fis } |
    } {
      \times 2/3 { h8 h fis'  h,4. } |
    }
  }
}

CChords = \chordmode {
  h2:m |
  s2 |
  s2 |

  a2 |

  h4:m s8 s8 |
  s2 |
  s2 |

  h2:m |
  h2:m |
}


D = \relative c'' {
  \times 2/3 {
    cis8 h h   cis ais h | \noBreak
    cis8 d eis  eis d gis | \noBreak
    gis8 fis gis,   fis' gis, eis' | \noBreak
    eis8 d d   cis gis' cis, | \noBreak
  }

  \times 2/3 {
    cis8 h h   cis ais h | \noBreak
    cis8 d eis  eis d gis | \noBreak
    gis8 fis gis,   fis' gis, eis' | \noBreak
    eis8 d d   cis4. | \break
  }

  \times 2/3 {
    cis8 h h   cis ais h | \noBreak
    cis8 d eis  eis d gis | \noBreak
    gis8 fis gis,   fis' gis, eis' | \noBreak
    eis8 d d   cis gis' cis, | \noBreak
  }

  \times 2/3 {
   cis8 cis d   ais h h | \noBreak
   h8 a a   fis gis gis | \noBreak
   fis8 gis gis   fis gis, eis' | \noBreak
   eis8 d d cis4. |
  }
}

DChords = \chordmode {
  cis2 |
  s2 |
  s2 |
  s2 |

  s2 |
  s2 |
  h2:m |
  s4 cis4 |

  cis2 |
  s2 |
  s2 |
  s2 |

  cis4 h4:m |
  s4 cis4 |
  s4 h4:m |
  s4 cis4 |
}

sitnoZenskoMelodyIVd = \relative c'' {
  \times 2/3 {
    h8 cis d   eis fis gis |
    gis8 fis gis   gis fis gis, |
    eis'8 eis d   fis gis, eis' |
    eis8 d d   cis gis' cis, |
  }
}

E = \relative c'' {
  \repeat volta 4 {
    \times 2/3 {
      h8 fis h   h a a |
      fis8 e' e   d fis, cis' |
      cis8 h cis  a h fis |
    }
  }
  \alternative {
    {
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { a8 h h   a a fis | }
    } {
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { a8 h h   h4. | }
      \set Score.repeatCommands = #'(end-repeat)
    }
  }
}
EChords = \chordmode {
  h2:m |
  s2 |
  s2 |

  s2 |
  s2 |
}

tupletSettings = {
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
}

sitnoZenskoMelody = {
  \clef treble
  \time 2/4
  \key fis \minor

  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  %\override TupletBracket #'bracket-visibility = ##f

  \A
  \break
  \B
  \break
  \C
  \break
  \repeat volta 2 { \D }
  \break
  \E
  \break

  \D
  \break
  \E
}

sitnoZenskoHarmonies = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  %\set chordChanges = ##t

  \AChords
  \BChords
  \CChords
  \DChords
  \EChords

  \DChords
  \EChords
}

\header {
  title = "Ситно женско"
  composer = "Bułgaria"
}
\score {
  <<
    \new Staff \transpose h a \sitnoZenskoMelody
    \new ChordNames \transpose h a \sitnoZenskoHarmonies
  >>
}
