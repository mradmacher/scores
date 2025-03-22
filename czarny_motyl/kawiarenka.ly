\version "2.22.1"
\include "deutsch.ly"

violin = \relative c' {
  \clef treble
  \key c \minor
  \time 4/4

  \partial 4*1 es8 d |
  es4. c8~c c d es | f4 d8 b~b es es d | es4. c8~c c d es | f4 d8 es~es f as4 | g1 | c2 a4 f | g1 | \acciaccatura { f16 g } b4 g f es |
  g2. f8 es | f2. f4 | es2. f8 g | a4. b8~b4 h8 c | es2. d4 | es2. d8 es | f4 es f b | as4. g8~g2 | as2 g4 f | d1 | es1 | c8 b4 g8 f4 es |

  \break
  g2. f8 g | as2 b4 as | g2. g4 | f2 es4 f | g4 c,2 g'4 | as2 b4 as | g4 c,2 g'4 | f2 es4 des |
  c2~ c8 c b des | c2~ c8 c es f | g2~ g8 g b c | c2 r2 |

  \break
  r8 g8 r8 g8 r8 g8 r8 g8  | r8 as8 r8 as8 r8 as8 r8 as8  | r8 g8 r8 g8 r8 g8 r8 g8  | r8 f8 r8 f8 r8 f8 r8 f8  |
  r8 g8 r8 g8 r8 g8 r8 g8  | r8 as8 r8 as8 r8 as8 r8 as8  | r8 g8 r8 g8 r8 g8 r8 g8  | r8 f8 r8 f8 r8 f8 r8 f8  |
  g8 r8 g'8 as g r8 r4  | r4 g,8 as g r8 g16 f es d | c2 r2 |

  \break
  e2. e8 f | g2. f8 g | as2. g8 as | h4. as8~as4 f4 | g2. f8 g | e2. des8 e | f2. e8 f | g4 f e des |
  c2~ c8 c b des | c2~ c8 c es f | g2~ g8 g b c | c2 r2 |

  \break
  \mark \markup { "Solo" }
  g'1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 | c4 r4 r2 | r2. g16 f es d | c2 r2 |
  \compressMMRests { R1*8 | }
  c2~ c8 c b g | c2~ c8 c es f | g2~ g8 g f es | c2 r2 |

  \break
  r8 g8 r8 g8 r8 g8 r8 g8  | r8 as8 r8 as8 r8 as8 r8 as8  | r8 g8 r8 g8 r8 g8 r8 g8  | r8 f8 r8 f8 r8 f8 r8 f8  |
  r8 g8 r8 g8 r8 g8 r8 g8  | r8 as8 r8 as8 r8 as8 r8 as8  | r8 g8 r8 g8 r8 g8 r8 g8  | r8 f8 r8 f8 r8 f8 r8 f8  |
  g8 r8 r4 r4 g'8 as | g8 r8 r4  r4 g16 f es d | c2 r2 |

  \break
  \compressMMRests { R1*7 | } | r2. des4 |
  c2. c8 des | e2. des8 e | f2. e8 f | g4. f8~f4 des4 | e2. des8 e | c2. b8 c | des4 r4 r2 | r1 | r1 | r1 |

  \break
  r2 r8 es8 es d |
  es4. c8~c c d es | f4 d8 b~b es es d | es4. c8~c c d es | f4 d8 es~es f as4 | g2  r8 es8 es d |
  es4. c8~c c d es | f4 d8 b~b es es d | es4. c8~c2 | r4 es4 es d | es2 b | d1 | r1 |
  \compressMMRests { R1*8 | }

  \break
  e2. e8 f | g2. f8 g | as2. g8 as | h4. as8~as4 f4 | g2. f8 g | e2. des8 e | f2. e8 f | g4 f e des |
  c2~ c8 c b des | c2~ c8 c es f | g2~ g8 g b c | c2 r4. e,16 f |
  g8 f16 g f8 e16 f e8 des16 e des8 c | c8 g' as b as g f e | g8 f16 g f8 e16 f e8 des16 e des8 b | c2 r2 |

  \break
  r4 g8 as g4 r4 | r4 as8 b as4 r4 | r4 g8 as g4 r4 | r4 f8 g f4 r4 |
  r4 g8 as g4 r4 | r4 as8 b as4 r4 | r4 g8 as g4 r4 | r4 f8 g f4 r4 |
  \break
  r8 g8 g g g g g g | r8 as as as as as as as | r8 g8 g g g g g g | r8 f f f f f f f |
  r1 | r1 | r8 g8 g g g g g g | r1 | c4 r4 r2 | r4 g'8 as g4 g16 a b h | c4 e c2 |

}

\header {
  title = "Kawiarenka"
  composer = "Czarny motyl"
  tagline = "2025-03-22"
}
\score {
  \header {
    instrument = "Violin"
  }
  \violin
}

