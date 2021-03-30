\version "2.12.2"
\include "deutsch.ly"

tupletSettings = {
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'bracket-visibility = ##f
}
zapojasMelodyI = \relative c' {
  \times 2/3 {
    f8 g f g4 a8 |
  }
  a4~ \times 2/3 { a8 g a } |
  \times 2/3 {
    g4 f8 f4. |
    f8 g g  g f es |
    d4.~ d4 f8 |
    g8 g e f4 s8 |

    c'8 d c c b a |
    g4 g8 f g a |
    g4 g8 f e d |
    c f es
  }
  d4 |
  d2 |
}
zapojasMelodyIVoltaI = \relative c'{
  \times 2/3 {
    d8 c' b a4 g8 |
  }
}
zapojasMelodyIVoltaII = \relative c' {
  \times 2/3 {
    d8 d a d4 s8 |
  }
}
zapojasChordsI = \chordmode {
  f2 |
  f2 |
  f2 |
  g2:m |
  d2:m |
  c4 f |

  f2 |
  g2:m |
  g2:m |
  d2:m |
  d2:m |
}
zapojasChordsIVoltaI = \chordmode {
  c2 |
}
zapojasChordsIVoltaII = \chordmode {
  d2:m |
}


zapojasMelodyII = \relative c'' {
  \times 2/3 {
    g8 as4 g4 s8 |
    f4 e8 d4 s8 |
    d8 e f g4 s8 |
    g8 f e d4 s8 |
    d8 e e c4 s8 |

    f4 c8 f g a |
    c8 d c c b a |
    g4 g8 f g a |
    g4 g8 f e d |
    c f es
    }
    d4 |
    d2 |
  \times 2/3 {
    d8 d a d4 s8 |
  }
}
zapojasChordsII = \chordmode {
  g2:m |
  d2:m |
  g2:m |
  d2:m |
  c2 |

  f2 |
  f2 |
  g2:m |
  g2:m |
  d2:m |
  d2:m |
  d2:m |
}

zapojasMelodyIII = \relative c'' {
  \times 2/3 {
    d8 a a d4 a8 |
    c4 b8 b a g |
    c8 d4 c4 b8 |
    a4 g8 f4 e8 |
    f8 g g g f g |
    a8 b a a f f |
    g4 f8 e e c |
  }
}
zapojasMelodyIIIVoltaI = \relative c' {
  \times 2/3 {
    d8 d e f g a |
  }
}
zapojasMelodyIIIVoltaII = \relative c' {
  \times 2/3 {
    d8 d a d4 s8 |
  }
}
zapojasChordsIII = \chordmode {
  d2:m |
  d2:m |
  c2 |
  f2 |
  g2:m |
  d2:m |
  c2 |
}
zapojasChordsIIIVoltaI = \chordmode {
  d2:m |
}
zapojasChordsIIIVoltaII = \chordmode {
  d2:m |
}

zapojasMelodyIV = \relative c' {
  \times 2/3 {
    f8 g g  g f g |
    a8 b a a f f |
    g4 f8 e e c |
    d8 e f g4 s8 |

    f8 g g  g f g |
    a8 b a a f f |
    g4 f8 e e c |
  }
}
zapojasMelodyIVVoltaI = \relative c' {
  \times 2/3 {
    c8 es d d4 s8 |
  }
}
zapojasMelodyIVVoltaII = \relative c' {
  d4
  \times 2/3 {
    g8 as h |
  }
}
zapojasChordsIV = \chordmode {
  g2:m |
  d2:m |
  c2 |
  d2:m |

  g2:m |
  d2:m |
  c2 |
}
zapojasChordsIVVoltaI = \chordmode {
  d2:m |
}
zapojasChordsIVVoltaII = \chordmode {
  d2:m |
}

zapojasMelodyV = \relative c'' {
  \times 2/3 {
    c4 h8 as4 c8 |
    h4 as8 g f g |
    as4 c8 h4 as8 |
    g8 f g as c4 |

    c4 h8 as4 c8 |
    h4 as8 g f g |
    as4 c8 h4 as8 |
    g8 f f g4 s8 |
  }
}
zapojasChordsV = \chordmode {
  g2 |
  g2 |
  g2 |
  g2 |

  g2 |
  g2 |
  g2 |
  f4:m g4 |
}

zapojasMelodyVI = \relative c'' {
  \times 2/3 {
    c4 h8 as c c |
    h as f g g g |
    as4 c8 h as f |
    g8 g g f e d |

    e8 f g as c c |
    h8 as f g g g |
    as4 c8 h as f |
    g8 g d g4 s8 |
  }
}
zapojasChordsVI = \chordmode {
  g2 |
  f4:m g |
  f2:m |
  g2 |

  g2 |
  f4:m g |
  f2:m |
  g2 |
}

zapojasMelodyVII = \relative c'' {
  \times 2/3 {
    g8 a e a4 c8 |
    h4 g8 a4 e8 |
    a4 c8 h4 g8 |
    a4 a8 g fis e |

    g8 a e a4 c8 |
    h4 g8 a4 e8 |
    a4 c8 h4 g8 |
    a8 e e a4 s8 |
  }
}
zapojasChordsVII = \chordmode {
  a2:m |
  a2:m |
  a2:m |
  a2:m |

  a2:m |
  a2:m |
  a2:m |
  a2:m |
}

zapojasMelodyVIII = \relative c'' {
  \times 2/3 {
    g8 a h c4 h8 |
    a4 c8 h4 d,8 |
    g4 c8 h g g |
    a8 a fis g g d |

    g8 a h c4 h8 |
    a4 c8 h4 d,8 |
    g4 c8 h g g |
    a8 a fis g4 s8 |
  }
}
zapojasChordsVIII = \chordmode {
  g2 |
  d4 g4 |
  g2 |
  d4 g |

  g2 |
  d4 g4 |
  g2 |
  d4 g |
}

zapojasMelodyIX = \relative c'' {
  \times 2/3 {
    c4 h8 a4 c8 |
    h4 g8 g a h
    c4 h g |
    a4 fis8 g d d |

    c'4 h8 a4 c8 |
    h4 g8 g a h
    c4 h g |
    a4 fis8 g4 s8 |
  }
}
zapojasChordsIX = \chordmode {
  g4 d4 |
  g2 |
  d2 |
  d4 g |

  g4 d4 |
  g2 |
  d2 |
  d4 g |
}

zapojasMelodyX = \relative c'' {
  \times 2/3 {
    g'8 g g f e d |
    f8 e d cis d g, |
    h g f' e d cis |
    d8 d g, h d e |

    f8 g4 g8 g g |
    f8 e d cis d g, |
    h g f' e d cis |
  }
}
zapojasMelodyXVoltaI = \relative c' {
  \times 2/3 {
    d'8 cis d h h g |
  }
}
zapojasMelodyXVoltaII = \relative c' {
  \times 2/3 {
    d'8 cis d h4 s8 |
  }
}
zapojasChordsX = \chordmode {
  g2 |
  g2 |
  g2 |
  g2 |

  g2 |
  g2 |
  g2 |
}
zapojasChordsXVoltaI = \chordmode {
  g2 |
}
zapojasChordsXVoltaII = \chordmode {
  g2 |
}

zapojasMelodyXI = \relative c' {
  \times 2/3 {
    d'4 f8 e d cis |
    d8 d g, h c cis |
    d8 f4 e8 d cis |
    d8 cis d h h g |

    d'4 f8 e d cis |
    d8 d g, h c cis |
    d8 f4 e8 d cis |
  }
}
zapojasMelodyXIVoltaI = \relative c' {
  \times 2/3 {
    d'8 cis d h h g |
  }
}
zapojasMelodyXIVoltaII = \relative c' {
  \times 2/3 {
    d'8 b h g4 s8 |
  }
}

zapojasChordsXI = \chordmode {
  g2 |
  g2 |
  g2 |
  g2 |

  g2 |
  g2 |
  g2 |
}
zapojasChordsXIVoltaI = \chordmode {
  g2 |
}
zapojasChordsXIVoltaII = \chordmode {
  g2 |
}

zapojasMelodyXII = \relative c'' {
  \times 2/3 {
    g8 a g g fis e |
    e8 h e g a h |
    g8 a g g fis e |
    d8 f e e4 s8 |

    g8 a g g fis e |
    e8 h e g a h |
    g8 a g g fis e |
    d8 f e e4 s8 |
  }
}
zapojasChordsXII = \chordmode {
  e2:m |
  e2:m |
  e2:m |
  d4:m e:m |

  e2:m |
  e2:m |
  e2:m |
  d4:m e:m |
}

zapojasMelodyXIII = \relative c' {
  d4 \times 2/3 { d'8 c h } |
  \times 2/3 {
    a4 c8 h4 g8 |
    a4 c8 h4 g8 |
    a8 g a d, d fis |
  }

  d4 \times 2/3 { d'8 c h } |
  \times 2/3 {
    a4 c8 h4 g8 |
    a4 c8 h4 g8 |
    a8 g a d,4 s8 |
  }
}
zapojasChordsXIII = \chordmode {
  d2 |
  d4 g |
  d4 g |
  d2 |

  d2 |
  d4 g |
  d4 g |
  d2 |
}

zapojasMelodyXIV = \relative c' {
  \times 2/3 {
    d4 c'8 h4 g8 |
    a8 g a d, d fis |
    d4 c'8 h4 g8 |
    a8 g a fis fis d |
  }

  \times 2/3 {
    d4 c'8 h4 g8 |
    a8 g a d, d fis |
    d4 c'8 h4 g8 |
    a8 g a a4 s8 |
  }
}
zapojasChordsXIV = \chordmode {
  d4 g |
  d2 |
  d4 g |
  d2 |

  d4 g |
  d2 |
  d4 g |
  d2 |
}


zapojasMelodyXV = \relative c'' {
  \times 2/3 {
    g8 g g h4 as8 |
    as8 g f g g d |
    h'4 as8 as g f |
    g8 g g f e d |

    e8 f g as c c |
    h as8 f g g d |
    h'4 as8 as g f |
    g g d g4 s8 |
  }
}
zapojasChordsXV = \chordmode {
  g2 |
  f4:m g |
  g4 f4:m |
  g2 |

  g2 |
  f4:m g |
  g4 f4:m |
  g2 |
}

zapojasMelodyXVI = \relative c'' {
  a4 \times 2/3 { cis8 b a } |
  \times 2/3 { cis8 b a a e e } |
  a4 \times 2/3 { cis8 b a } |
  \times 2/3 { g8 b a a e e } |

  a4 \times 2/3 { cis8 b a } |
  \times 2/3 { cis8 b a a e e } |
  a4 \times 2/3 { cis8 b a } |
  \times 2/3 { g8 b a } a4 |
}
zapojasChordsXVI = \chordmode {
  a2 |
  a2 |
  a2 |
  g4:m a |

  a2 |
  a2 |
  a2 |
  g4:m a |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
zapojasMelody = {
  \tupletSettings
  \key f \major
  \time 2/4
  \repeat volta 2 {
    \zapojasMelodyI
  } \alternative {
    { \zapojasMelodyIVoltaI } { \zapojasMelodyIVoltaII }
  }
  \break

  \repeat volta 2 { \zapojasMelodyII }
  \break

  \repeat volta 2 {
    \zapojasMelodyIII
  } \alternative {
    { \zapojasMelodyIIIVoltaI } { \zapojasMelodyIIIVoltaII }
  }
  \break

  \repeat volta 2 {
    \zapojasMelodyIV
  } \alternative {
    { \zapojasMelodyIVVoltaI } { \zapojasMelodyIVVoltaII }
  }
  \break

  \repeat volta 2 { \zapojasMelodyV }
  \break

  \repeat volta 2 { \zapojasMelodyVI }
  \break

  \key g \major
  \repeat volta 2 { \zapojasMelodyVII }
  \break

  \repeat volta 2 { \zapojasMelodyVIII }
  \break

  \repeat volta 2 { \zapojasMelodyIX }
  \break

  \key c \major
  \repeat volta 2 {
    \zapojasMelodyX
  } \alternative {
    { \zapojasMelodyXVoltaI } { \zapojasMelodyXVoltaII }
  }
  \break

  \repeat volta 2 {
    \zapojasMelodyXI
  } \alternative {
    { \zapojasMelodyXIVoltaI } { \zapojasMelodyXIVoltaII }
  }
  \break

  \key e \minor
  \repeat volta 2 { \zapojasMelodyXII }
  \break

  \key g \major
  \repeat volta 2 { \zapojasMelodyXIII }
  \break

  \repeat volta 2 { \zapojasMelodyXIV }
  \break

  \key c \minor
  \repeat volta 2 { \zapojasMelodyXV }
  \break

  \key d \minor
  \repeat volta 2 { \zapojasMelodyXVI }
}

zapojasChords = {
  \germanChords
  \set chordChanges = ##t

  \zapojasChordsI \zapojasChordsIVoltaI \zapojasChordsIVoltaI
  \zapojasChordsII
  \zapojasChordsIII \zapojasChordsIIIVoltaI \zapojasChordsIIIVoltaII
  \zapojasChordsIV \zapojasChordsIVVoltaI \zapojasChordsIVVoltaII

  \zapojasChordsV
  \zapojasChordsVI
  \zapojasChordsVII
  \zapojasChordsVIII
  \zapojasChordsIX
  \zapojasChordsX \zapojasChordsXVoltaI \zapojasChordsXVoltaII

  \zapojasChordsXI \zapojasChordsXIVoltaI \zapojasChordsXIVoltaII
  \zapojasChordsXII
  \zapojasChordsXIII
  \zapojasChordsXIV
  \zapojasChordsXV
  \zapojasChordsXVI
}

\header { title = "За пойас" }
\score {
  <<
    \new Staff \zapojasMelody
    \new ChordNames \zapojasChords
  >>
}


