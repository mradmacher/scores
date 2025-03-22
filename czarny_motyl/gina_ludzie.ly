\version "2.22.1"
\include "deutsch.ly"

trumpet = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4

  \compressMMRests { R1*4 | }
  < g b >1 |
  < fis a > |
  < g b >1 |
  < a d > |
  \compressMMRests { R1*4 | }
  < g b >1 |
  < fis a > |
  < g b >1 |
  < a d > |

  \break
  b8 b b b b b c b | a a a a a g a b | b b b b b b c b | r1 |

  \break
  <b d>8 <b d> <b d> <b d> <b d> <b d> <c es> <b d> | <a c> <a c> <a c> <a c> <a c> <g b> <a c> <b d> |
  <b d>8 <b d> <b d> <b d> <b d> <b d> <c es> <b d> | r4 <a c>8 <g b> <a c> <b d>~<b d>4 |

  \compressMMRests { R1*8 | }

  \break
  <b d>2~ <b d>8. <b d>16 <a c>8. <b d>16 | <c es>4~ <c es>8. <d f>16 <c es>8. <b d>16 <a c>8. <g b>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <g b>16 | <c es>4~ <c es>8. <d f>16 <c es>8. <b d>16 <c es>8. <a c>16 |
  <b d>2~ <b d>8. <b d>16 <a c>8. <b d>16 | <c es>4~ <c es>8. <d f>16 <c es>8. <b d>16 <a c>8. <c es>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <g b>16 | <a d>4 <d fis> <d fis> <d fis> |

  \break
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <g b> <a c>8. <g b>16 <fis a>8. <a c>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <d fis>8. <es g>16 <d fis>8. <c es>16 <b d>8. <a c>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <g b>8. <es' g>16 <d fis>8. <c es>16 <b d>8. <a c>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <d g> <d fis> r4 |

  \break
  \compressMMRests { R1*4 | }
  < g, b >1 |
  < fis a > |
  < g b >1 |
  < a d > |

  d8 d d d d d es d | c c c c c b c d | d d d d d d es d | r1 |

  \break
  <b d>8 <b d> <b d> <b d> <b d> <b d> <c es> <b d> | <a c> <a c> <a c> <a c> <a c> <g b> <a c> <b d> |
  <b d>8 <b d> <b d> <b d> <b d> <b d> <c es> <b d> | r4 <a c>8 <g b> <a c> <b d>~<b d>4 |

  \compressMMRests { R1*15 | } r2 <a' d>16 <a d> <a d> <a d> <a d> <a d> <a d> <a d> |

  \break
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <g b> <a c>8. <g b>16 <fis a>8. <a c>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <d fis>8. <es g>16 <d fis>8. <c es>16 <b d>8. <a c>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <g b>8. <es' g>16 <d fis>8. <c es>16 <b d>8. <a c>16 |
  <b d>4 <b d> <c es>8. <b d>16 <a c>8. <c es>16 | <b d>4 <d g> <d fis> <d fis> |

  \break
  \compressMMRests { R1*4 | } d1~\< | d1~ | d1~ | d1\! |
  \mark \markup { "Solo" }
  \compressEmptyMeasures
  R1*7
  \tuplet 3/2 { g,8 g g } \tuplet 3/2 { g g fis } \tuplet 3/2 { g g g } \tuplet 3/2 { g g fis }

  <<
    {
      \voiceOne
      g1~ | g2. fis4 | g1 | \tuplet 3/2 { g8 g g } \tuplet 3/2 { g g g } \tuplet 3/2 { g g g } \tuplet 3/2 { g g fis } |
      g1~ | g2. fis4 | g1~ | g4 g4 fis r4 |
    }
    \new Voice {
      \voiceTwo
      b,4 b c8. b16 a8. c16 | b4 g a8. g16 fis8. a16 |
      b4 b c8. b16 a8. c16 | b4 d8. es16 d8. c16 b8. a16 |
      b4 b c8. b16 a8. c16 | b4 g8. es'16 d8. c16 b8. a16 |
      b4 b c8. b16 a8. c16 | b4 d d r4 |

    }
  >>
}

\header {
  title = "Giną ludzie"
  composer = "Czarny motyl"
  tagline = "2025-03-22"
}
\score {
  \trumpet
}

