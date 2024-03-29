\version "2.16.2"
\include "deutsch.ly"
melody = \relative c''' {
  \time 2/4
  \key f \major
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t
  \override TupletBracket #'transparent = ##t

  \repeat volta 4 {
    \times 2/3 {
      b4 g8 f4 e8 |
      e8 dis e g4 a8 |
      b4 g8 f4 e8 |
    }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { e8 dis e g4 c,8 } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { e8 dis e } c4 |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \break

  \repeat volta 4 {
    \times 2/3 {
      g'4 c,8 f4 e8 |
      e8 dis e g4 c,8 |
      g'4 c,8 f4 e8 | }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { e8 dis e c4 g8 } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { e'8 dis e } c4  |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \break

  \repeat volta 4 {
    \times 2/3 {
      c'8 h c d c b |
      a8 b8 c a4 g8 |
      fis8 g a f4 e8 | }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { e8 dis e g4 c,8 } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { e8 dis e } c4  |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \break

  \mark \markup { \musicglyph "scripts.segno" }
  \repeat volta 4 {
    \times 2/3 {
      g'4 c,8 b'4 g8 |
      a4 g8 g4 c,8 |
      g'4 c,8 f4 e8 | }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { e8 dis e g4 c,8 } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { e8 dis e } c4  |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \break


  \key g \minor
  \repeat volta 4 {
    \times 2/3 {
      fis8 g a b a g |
      a4 g8 fis g a |
      fis4 es8 es d c | }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { c d es fis g a } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { d,4 d8 d4 d8 } |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \break

  \repeat volta 4 {
    \times 2/3 {
      fis4 es8 es d c |
      d4 d8 fis g a |
      fis4 es8 es d c | }
  }
  \alternative {{
     \times 2/3 { d4 d8 d4 d8 } |
      \set Score.repeatCommands = #'(end-repeat)
    }
  }
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "Fine" }
  \break

  \repeat volta 2 {
    \times 2/3 {
      b'8 a a b a g |
      a4 g8 fis g a |
      fis4 es8 es d c | }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { c d es fis g a } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { d,4 d8 d4 d8 } |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \break

  \repeat volta 4 {
    \times 2/3 {
      fis4 es8 es d c |
      d4 d8 fis g a |
      fis4 es8 es d c | }
  }
  \alternative {{
     \times 2/3 { d4 d8 d4 d8 } |
      \set Score.repeatCommands = #'(end-repeat)
    }
  }
  \break

  \key f \major
  \repeat volta 2 {
    \times 2/3 {
      c8 g c d8 dis e8 |
      f8 g, f' e4 dis8 |
      e8 g, e' fis8 g a |
      b4 g8 f4 e8 |
    }
    \break
    \times 2/3 {
      g4 a8 b8 h c |
      d4 c8 b4 a8 |
      g4 a8 f4 e8 |
    }
  }
  \alternative {
    {
      \times 2/3 { e8 dis e g4 c,8 | }
    }
    {
      \times 2/3 { e8 dis e } c4 |
    }
  }
  \break

  \repeat volta 4 {
    \times 2/3 {
      g'4 a8 b8 h c |
      d4 c8 b4 a8 |
      g4 a8 f4 e8 | }
  }
  \alternative {{
      \set Score.repeatCommands = #'((volta "1, 3"))
      \times 2/3 { e8 dis e g4 c,8 } |
    }{
      \set Score.repeatCommands = #'((volta "2, 4") end-repeat)
      \times 2/3 { e8 dis e  } c4  |
      \set Score.repeatCommands = #'(end-repeat)
  }}
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "D.S. al Fine" }
}
harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  c2 | s2 | s2 |
  c2 | c2 |

  c2 | s2 | s2 |
  c2 | c2 |

  f2 | s2 | c2 |
  c2 | c2 |

  c2 | s2 | s2 |
  c2 | c2 |

  d2 | s2 | c2:m
  d2 | d2 |

  c2:m | d2 | c2:m | d2 |

  g2:m | d2 | c2:m |
  d2 | d2 |

  c2:m | d2 | c2:m | d2 |

  c2 | s2 | s2 | s2 |
  c2 | s2 | g2 |
  c2 | c2 |

  c2 | s2 | g2 |
  c2 | c2 |
}

\header {
  title = "Шопска петорка"
  composer = "Македонија"
  tagline = "05.03.2024"
}
\score {
  <<
    \new Staff  \melody
    \new ChordNames \harmonies
  >>
}
