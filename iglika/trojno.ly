\version "2.16.2"
\include "deutsch.ly"

tupletSettings = {
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
}

trojnoMelodyI = \relative c' {
  \times 2/3 {
    d8 e fis  g g d |
    g8 a h  d4 h8 |
    d8 c h  a a g |
    h8 h h  h4 s8 |

    d,8 e fis  g g d |
    g8 a h  d4 h8 |
    d8 c h  a a g |
    h8 h g  g4 s8 |
  }
}
trojnoChordsI = \chordmode {
  g2 |
  g2 |
  d2 |
  g2 |

  g2 |
  g2 |
  d2 |
  g2 |
}

trojnoMelodyII = \relative c'' {
  \times 2/3 {
    d8 c h  d c h |
    a8 a g  h h g |
    d'8 c h a a g |
    h8 h h  h h g |

    d'8 c h  d c h |
    a8 a g  h h g |
    d'8 c h a a g |
  }
}
trojnoMelodyIIVoltaI = \relative c'' {
  \times 2/3 { h8 h g  g4 s8 | }
}
trojnoMelodyIIVoltaII = \relative c'' {
  g4 r |
}
trojnoChordsII = \chordmode {
  g2 |
  d4 g |
  g4 d |
  g2 |

  g2 |
  d4 g |
  g4 d |
}
trojnoChordsIIVoltaI = \chordmode {
  g2 |
}
trojnoChordsIIVoltaII = \chordmode {
  g2 |
}

trojnoMelodyIIi = \relative c'' {
  r2 | r2 |
}
trojnoChordsIIi = \chordmode {
  a2:m | a2:m |
}
trojnoMelodyIII = \relative c'' {
  \times 2/3 {
    a8 a e  c' c e, |
    h'8 h e,  a a e |
    c'8 c e, h' h e, |
    a8 a e  a a e |

    a8 a e  c' c e, |
    h'8 h e,  a a e |
    c'8 c e, h' h e, |
  }
}
trojnoMelodyIIIVoltaI = \relative c'' {
  \times 2/3 {
    a8 a e a4 s8 |
  }
}
trojnoMelodyIIIVoltaII = \relative c'' {
  \times 2/3 {
    a4 s8 r4 s8 |
  }
}
trojnoChordsIII = \chordmode {
  a2:m |
  a2:m |
  a2:m |
  a2:m |

  a2:m |
  a2:m |
  a2:m |
}
trojnoChordsIIIVoltaI = \chordmode {
  a2:m |
}
trojnoChordsIIIVoltaII = \chordmode {
  a2:m |
}
trojnoMelodyIIIi = \relative c'' {
  r2 | r2 |
}
trojnoChordsIIIi = \chordmode {
  g2 | g2 |
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trojnoMelodyIV = \relative c'' {
  g8 as h d,  c' h as  h h h as |
  g8 as h d,  as' g f  g g g d |

  g8 as h d,  c' h as  h h h as |
  g8 as h d,  as' g f  g g g4 |
}
trojnoChordsIV = \chordmode {
  g2 s4. s2 |
  g2 f4.:m g2 |

  g2 s4. s2 |
  g2 f4.:m g2 |
}

trojnoMelodyV = \relative c'' {
  h8 c d h  h c as  h h h as |
  g8 as h d,  as' g f  g g g d |
}
trojnoChordsV = \chordmode {
  g2 s4. s2 |
  g2 f4.:m g2 |
}

trojnoMelodyVI = \relative c'' {
  g4  fis'8 g  f e d  cis d d h |
  c8 c c h  h ais h  cis d e f |

  g,4  fis'8 g  f e d  cis d d h |
  c8 c c h  h ais h  g g g4 |
}
trojnoChordsVI = \chordmode {
  g2 s4. s2 |
  g2 s4. s2 |

  g2 s4. s2 |
  g2 s4. s2 |
}

trojnoMelodyVII = \relative c'' {
  g8 d cis' d  h c d  g, a h d |
  c8 c c h  h ais h  g g g d |

  g8 d cis' d  h c d  g, a h d |
  c8 c c h  h ais h  g g g4 |
}
trojnoChordsVII = \chordmode {
  g2 s4. s2 |
  g2 s4. s2 |

  g2 s4. s2 |
  g2 s4. s2 |
}

trojnoMelodyVIII = \relative c'' {
  f8 e d cis  d h c  cis d d g, |
  f'8 e d cis  d h c  cis d d g, |

  g8 d d' c  h c d  f g, e' g, |
  f'8 g, e' g,  c h c  cis d d g, |
}
trojnoChordsVIII = \chordmode {
  g2 s4. s2 |
  g2 s4. s2 |

  g2 s4. s2 |
  g2 s4. s2 |
}

trojnoMelodyIX = \relative c'' {
  fis8 g a fis  b a g  a a a g |
  fis8 g a fis  g fis es  fis fis fis d |

  fis8 g a fis  b a g  a a a g |
  fis8 g a fis  g fis es  fis fis fis4 |
}
trojnoChordsIX = \chordmode {
  d2 s4. s2 |
  d2 c4.:m d2 |

  d2 s4. s2 |
  d2 c4.:m d2 |
}

trojnoMelodyX = \relative c'' {
  fis8 g a fis  fis g es  fis fis fis es |
  d8 es fis d  es d c  d d d a |

  fis'8 g a fis  fis g es  fis fis fis es |
  d8 es fis d  es d c  d d d4 |
}
trojnoChordsX = \chordmode {
  d2 s4. s2 |
  d2 c4.:m d2 |

  d2 s4. s2 |
  d2 c4.:m d2 |
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trojnoMelodyXI = \relative c'' {
  \times 2/3 {
    e8 e g,  f' f g, |
    e'8 e g,  g' g g, |

    e'8 e g,  f' f g, |
    e'8 e g,  d' d g, |

    e'8 e g,  f' f g, |
    e'8 e g,  g' g g, |

    e'8 e g,  f' f g, |
    e'8 e g,  d' d g, |
  }
}
trojnoChordsXI = \chordmode {
  c2 |
  c2 |
  c2 |
  g2 |

  c2 |
  c2 |
  c2 |
  g2 |
}

trojnoMelodyXII = \relative c'' {
  \times 2/3 {
    d4 es8  fis4 es8 |
    fis4 es8  es d c |

    d4 es8  fis4 es8 |
    fis4 es8  es d c |

    d4 es8  fis4 es8 |
    fis4 es8  es d c |
  }
  d4 a' |
  d,4 d |
}
trojnoChordsXII = \chordmode {
  d2 |
  d2 |
  d2 |
  d2 |

  d2 |
  d2 |
  d2 |
  d2 |
}
trojnoMelodyXIIi = \relative c'' {
  \times 2/3 {
    d4 es8  fis4 es8 |
    fis4 es8  es d c |

    d4 es8  fis4 es8 |
    fis4 es8  es d c |

    d4 es8  fis4 es8 |
    fis4 es8  es d c |
  }
}
trojnoMelodyXIIiVoltaI = \relative c'' {
  d4 a' |
  d,4 d |
}
trojnoMelodyXIIiVoltaII = \relative c'' {
  d8 dis e fis |
  g4 g |
}
trojnoChordsXIIi = \chordmode {
  d2 |
  d2 |
  d2 |
  d2 |

  d2 |
  d2 |
}
trojnoChordsXIIiVoltaI = \chordmode {
  d2 |
  d2 |
}
trojnoChordsXIIiVoltaII = \chordmode {
  d2 |
  g2 |
}

trojnoMelodyXIII = \relative c''' {
  \times 2/3 {
    a4 g8  fis4 es8 |
    d4 c8  g'4 s8 |
    fis4 g8 fis4 es8 |
    d4 c8  g'4 s8

    a4 g8  fis4 es8 |
    d4 c8  g'4 s8 |
    fis4 es8  d4 c8 |
  }
}
trojnoMelodyXIIIVoltaI = \relative c'' {
  \times 2/3 {
    d4 c8 c4 s8 |
  }
}
trojnoMelodyXIIIVoltaII = \relative c'' {
  \times 2/3 {
    d4 d8 d4 s8 |
  }
}
trojnoChordsXIII = \chordmode {
  c4:m d |
  c2:m |
  c4:m d |
  c2:m |

  c4:m d |
  c2:m |
  c4:m d |
}
trojnoChordsXIIIVoltaI = \chordmode {
  c2:m |
}
trojnoChordsXIIIVoltaII = \chordmode {
  g2 |
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
trojnoMelody = {
  \tupletSettings

  \key g \major
  \time 2/4
  \repeat volta 2 { \trojnoMelodyI }
  \break
  \repeat volta 2 {
    \trojnoMelodyII
  } \alternative {
    { \trojnoMelodyIIVoltaI } { \trojnoMelodyIIVoltaII }
  }
  \break
  \trojnoMelodyIIi
  \repeat volta 2 {
    \trojnoMelodyIII
  } \alternative {
    { \trojnoMelodyIIIVoltaI } { \trojnoMelodyIIIVoltaII }
  }
  \trojnoMelodyIIIi

  \key c \minor
  \time 11/8
  \set Timing.beatStructure = #'(2 2 3 2 2)
  r2 r4. r2 |
  r2 r4. r2 |
  \repeat volta 2 { \trojnoMelodyIV }
  \break
  %\repeat volta 2 { \trojnoMelodyV }
  \key c \major
  \repeat volta 2 { \trojnoMelodyVI }
  \break
  \repeat volta 2 { \trojnoMelodyVII }
  \break
  \repeat volta 2 { \trojnoMelodyVIII }
  \break
  \key g \minor
  \repeat volta 2 { \trojnoMelodyIX }
  %\repeat volta 2 { \trojnoMelodyX }

  \key c \major
  \time 2/4
  r2 |
  \repeat volta 2 { \trojnoMelodyXI }
  \break
  \key g \minor
  \repeat volta 2 { \trojnoMelodyXII }
  \break
  \repeat volta 2 {
    \trojnoMelodyXIII
  } \alternative {
    { \trojnoMelodyXIIIVoltaI }
    { \trojnoMelodyXIIIVoltaII }
  }
  \break
  \key c \major
  \repeat volta 2 { \trojnoMelodyXI }
  \break
  \key g \minor
  \repeat volta 2 {
    \trojnoMelodyXIIi
  } \alternative {
    { \trojnoMelodyXIIiVoltaI }
    { \trojnoMelodyXIIiVoltaII }
  }
}

trojnoChords = {
  \set chordChanges = ##t

  \trojnoChordsI
  \trojnoChordsII \trojnoChordsIIVoltaI \trojnoChordsIIVoltaI
  \trojnoChordsIIi
  \trojnoChordsIII \trojnoChordsIIIVoltaI \trojnoChordsIIIVoltaII
  \trojnoChordsIIIi

  s2 s4. s2 |
  s2 s4. s2 |
  \trojnoChordsIV
  %\trojnoChordsV
  \trojnoChordsVI
  \trojnoChordsVII
  \trojnoChordsVIII
  \trojnoChordsIX
  %\trojnoChordsX

  r2 |
  \trojnoChordsXI
  \trojnoChordsXII
  \trojnoChordsXIII \trojnoChordsXIIIVoltaI \trojnoChordsXIIIVoltaII
  \trojnoChordsXI
  \trojnoChordsXIIi \trojnoChordsXIIiVoltaI \trojnoChordsXIIiVoltaII


}

\header { title = "Trojno" }
\score {
  <<
    \new Staff \trojnoMelody
    \new ChordNames \trojnoChords
  >>
}

