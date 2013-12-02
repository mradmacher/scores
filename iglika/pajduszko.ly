\version "2.16.2"
\include "deutsch.ly"

melody_i = \relative c' {
  e4 d8 e fis |
  g4 g fis8 |
  a4 a fis8 |
  g8 fis e4 d8 |

  e4 d8 e fis |
  g4 g fis8 |
  g8 fis e fis d |
  e8 h e4. |
}
harmonies_i = \chordmode {
  e4:m d4. |
  g4 s4. |
  a4:m s4. |
  a4:m s4. | %???

  e4:m d4. |
  g4 s4. |
  a4:m s4. |
  e4:m s4. |
}

melody_ii = \relative c'' {
  g8 fis e fis d |
  e8 fis g4 fis8 |
  g8 fis e fis d |
  e8 h a'4. |

  g8 fis e fis d |
  e8 fis g4 fis8 |
  g8 fis e fis d |
  e8 h e4. |
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "Fine" }
}
harmonies_ii = \chordmode {
  e4:m s4. |
  e4:m s4. |
  e4:m s4. |
  e4:m a4.:m |

  e4:m s4. |
  e4:m s4. |
  e4:m d4. |
  e4:m s4. |
}

melody_iii = \relative c'' {
  a4^\segno h h8 |
  d8 e h4 a8 |
  a8 e a4 g8 |
  h8 a g4 e8 |

  a4 h h8 |
  d8 e h4 a8 |
  a8 e a4 g8 |
  h8 a g4. |
}
harmonies_iii = \chordmode {
  e4:m s4. |
  e4:m s4. |
  a4:m s4. |
  e4:m s4. |

  e4:m s4. |
  e4:m s4. |
  a4:m s4. |
  e4:m s4. |
}

melody_iv = \relative c'' {
  a8 e a4 g8 |
  h8 a g4 fis8 |
  e8 h e4 d8 |
  e8 fis g4 fis8 |

  a8 e a4 g8 |
  h8 a g4 fis8 |
  e8 h g'4 fis8 |
  e8 h e4.^\markup { "D.S." } |
}
harmonies_iv = \chordmode {
  a4:m s4. |
  e4:m s4. |
  e4:m s4. |
  e4:m s4. |

  a4:m s4. |
  e4:m s4. |
  e4:m s4. |
  e4:m s4. |
}

melody_v = \relative c'' {
  cis8^\segno d d cis d |
  e8 e d c h |
  c8 d, c' h a |
  h8 h h a g |
}
harmonies_v = \chordmode {
  d4 s4. |
  d4 s4. |
  d4 s4. |
  g4 s4. |
}

melody_vi = \relative c'' {
  c8 e, c' h a |
  h8 h h a g |
  a8 h g g fis |
  e8 fis g a h |

  c8 e, c' h a |
  h8 h h a g |
  a8 h g g fis |
  e8 h e4.^\markup { "D.S." } |
}
melody_vi_a = \relative c'' {
  c8 e, c' h a |
  h8 h h a g |
  a8 h g g fis |
  e8 fis g a h |

  c8 e, c' h a |
  h8 h h a g |
  a8 h g g fis |
  e8 h e4. |
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "D.C. al Fine" }
}
harmonies_vi = \chordmode {
  a4:m s4. |
  e4:m s4. |
  d4 s4. | %???
  e4:m s4. | %???

  a4:m s4. |
  e4:m s4. |
  d4 s4. | %???
  e4:m s4. | %???
}
melody_vii = \relative c'' {
  a8^\segno g a h h |
  h d, h' h a |
  a8 g a h a |
  g8 d g g g|

  a8 g a h h |
  h d, h' h a |
  a8 g a h a |
  g8 d g4. |
}
harmonies_vii = \chordmode {
  d4 s4. |
  g4 s4. |
  d4 s4. |
  g4 s4. |

  d4 s4. |
  g4 s4. |
  d4 s4. |
  g4 s4. |
}

melody_viii = \relative c' {
  d4 cis'8 d d |
  d8 c c c h |
  h8 a a g h |
  g8 d g g g |

  d4 cis'8 d d |
  d8 c c c h |
  h8 a a g h |
  g8 d g4.^\markup { "D.S." } |
}
harmonies_viii = \chordmode {
  d4 s4. |
  d4 s4. |
  d4 s4. |
  g4 s4. |

  d4 s4. |
  d4 s4. |
  d4 s4. |
  g4 s4. |
}

melody = {
  \time 5/8
  \key e \minor
  \set Timing.beatStructure = #'(2 3)

  \repeat volta 2 { \melody_i }
  \break
  \repeat volta 2 { \melody_ii }
  \break
  \melody_iii
  \break
  \repeat volta 2 { \melody_iv }
  \break
  \repeat volta 2 { \melody_v }
  \break
  \repeat volta 2 { \melody_vi }
  \break
  \repeat volta 2 { \melody_vii }
  \break
  \repeat volta 2 { \melody_viii }
  \break
  \repeat volta 2 { \melody_vi_a }
}

harmonies = {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  \harmonies_i
  \harmonies_ii
  \harmonies_iii
  \harmonies_iv
  \harmonies_v
  \harmonies_vi
  \harmonies_vii
  \harmonies_viii
  \harmonies_vi
}

\header { title="Пайдушко" }
\score {
  <<
    \new Staff \transpose e d \melody
    \new ChordNames \transpose e d \harmonies
  >>
}

