\version "2.16.2"
\include "deutsch.ly"

melody_i = \relative c' {
  f16 g g g  d' d c |
  c16 d d d  d c b |
  b16 f c' d  d d c |
  b16 c c b  b a f |
  g16 d b' c  c c b |
  b16 c c b  b a f |
  g16 g g d  d' c d |
  g,8 c16 d  g,8. |
}
harmonies_i = \chordmode {
  g4..:m |
  g4..:m |
  g4..:m |
  c4:m f8. |
  g4:m c8.:m |
  f4.. |
  g4..:m |
  g4..:m |
}
breaks_i = {
  \stopStaff
  s4..
  s4..
  s4..
  \startStaff
  g4 g8. \bar "|"
  g4 g8. |
  \stopStaff
  s4..
  s4..
  s4..
}

melody_ii = \relative c'' {
  d16 d, c' d  d c b |
  c16 d, b' c  c b a |

  b16 d, a' b  b a f |
  g16 a b c  d d g, |

  d'16 d, c' d  d c b |
  c16 d, b' c  c b a |

  b16 d, a' b  b as g |
  g16 d as' g  g d d |
}
harmonies_ii = \chordmode {
  g4..:m |
  c4..:m |
  f4.. |
  g4..:m |

  g4..:m |
  c4..:m |
  f4.. |
  g4..:m |
}
breaks_ii = {
  \startStaff
  g4 r8. |
  g4 r8. |
  g4 r8. |
  g8 g8 g8. |

  g4 r8. |
  g4 r8. |
  g4 r8. |
  g8 g8 g8. |
  \stopStaff
}

melody_iii = \relative c'' {
  b16 a b d,  as' as g |
  g16 d c' des  des c b |
  b16 d, a' b  b as g |
  g16 f as g  g d d |
}
harmonies_iii = \chordmode {
  g4..:m |
  g4..:m |
  g4..:m |
  g4..:m |
}
breaks_iii = {
  \stopStaff
  s4..
  s4..
  s4..
  s4..
}

melody_iv = \relative c'' {
  c16 h h d,  c' c h |
  h16 d, as' g  g d d |
  h'16 h h d,  as' as g |
  g16 f as g  g d d
}
harmonies_iv = \chordmode {
  g4.. |
  g4.. |
  g4.. |
  g4.. |
}
breaks_iv = {
  \startStaff
  g4 g8. | \bar "|"
  g4 g8. |\bar "|"
  g4 g8. |\bar "|"
  g8 g8 g8. |\bar "|"
  \stopStaff
}

melody_v = \relative c'' {
  e16 f f d  f e d |
  d16 cis d g,  h h g |

  e'16 f f d  f e d |
  d16 cis d g,  h h g |

  e'16 f f d  f e d |
  d8 e16 f  f e d |

  e16 f f d  f e d |
  d16 cis d g,  h h g |
}
harmonies_v = \chordmode {
  g4.. |
  g4.. |
  g4.. |
  g4.. |
  g4.. |
  g4.. |
  g4.. |
  g4.. |
}
breaks_v = {
  \stopStaff
  s4..
  s4..
  s4..
  s4..
  s4..
  \startStaff
  g8 g8 r8.
  \stopStaff
  s4..
  s4..
}

melody_vi = \relative c'' {
  e16 f f d  f e d |
  d8 fis16 g  g e f |
  g16 e f g,  f' e d |
  d16 cis d g,  h h g |
}
harmonies_vi = \chordmode {
  g4.. |
  g4.. |
  g4.. |
  g4.. |
}
breaks_vi = {
  \stopStaff
  s4..
  \startStaff
  g8 g8 r8.
  \stopStaff
  s4..
  s4..
}

melody = {
  \time 7/16
  \key g \minor
  \set Timing.beatStructure = #'(2 2 3)

  \repeat volta 2 { \melody_i }
  \break

  \repeat volta 2 { \melody_ii }
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark "D.C."
  \break

  \repeat volta 2 {
    \melody_iii
    \melody_iii
  }
  \break

  \key c \major
  \mark \markup { "4x" }
  \repeat volta 4 { \melody_iv }
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark \markup { "Fine" }
  \break

  \repeat volta 2 { \melody_v }
  \break

  \mark \markup { "4x" }
  \repeat volta 4 { \melody_vi }
  \break

  \mark \markup { "4x" }
  \repeat volta 4 { \melody_iv }
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "D.C. al Fine" }
}

harmonies = {
  \set chordChanges = ##t
  \germanChords
  \harmonies_i
  \harmonies_ii
  \harmonies_iii \harmonies_iii
  \harmonies_iv
  \harmonies_v
  \harmonies_vi
  \harmonies_iv
}

breaks = {
  \breaks_i
  \breaks_ii
  \breaks_iii \breaks_iii
  \breaks_iv
  \breaks_v
  \breaks_vi
  \breaks_iv
}
\header { title = "Шопска Ръченица" }
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
    \new RhythmicStaff \with {
      \remove "Time_signature_engraver"
      \remove "Bar_engraver"
      fontSize = #-2
      \override StaffSymbol #'staff-space = #(magstep -2)
      firstClef = ##f
    } \breaks
  >>
}
