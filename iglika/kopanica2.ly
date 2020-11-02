\version "2.16.2"
\include "deutsch.ly"

A = \transpose g a \relative c''{
  \repeat volta 2 {
    cis8 d d cis b cis4 b8 a g4 | \noBreak
    cis8 d d cis b cis4 b8 a g4 | \noBreak
    cis8 d d cis b cis4 b8 a g4 | \noBreak
    a8 g fis g a4 d,8 a' a a4 |
  }
}
AChords = \transpose g a \chordmode {
  g2:m s4. s2 |
  g2:m s4. s2 |
  g2:m s4. s2 |
  a2 d4. s2 |
}

B = \transpose a d' \relative c''{
  \repeat volta 2 {
    a8 g fis e h'4 e,8 h'8 h h e, | \noBreak
    a8 g fis e h'4 e,8 h'8 h h e, | \noBreak
    a8 g fis e h'4 e,8 h'8 h h e, | \noBreak
  }
  \alternative { {
    a g fis g a4 d,8 a'8 a a d, | \noBreak
  } {
    a' g fis g a4 d,8 a'4 r4 |
  } }
}
BChords = \transpose a d \chordmode {
 e2:m s4. s2 |
 e2:m s4. s2 |
 e2:m s4. s2 |
 e2:m d4. s2 |
 e2:m d4. s2 |
}

% Middle part

C = \relative c''{
  \repeat volta 2 {
    a4 e' e d8 e4 d | e d d c8 d4 c8 h | g4 a8 h c d h c4 h4 |
    g a8 a g fis g a4 a |
  }
}
CChords = \chordmode {
  a2:m s4. s2 |
  a2:m s4. s2 |
  g2 s4. s2 |
  a2:m s4. s2 |
}

D = \relative c''{
  \repeat volta 2 {
    g4 a8 h c d h c4 h4 | g4 a8 h c d h c4 h4 |
    g4 a8 h c d h c4 h4 | g4 a8 a g fis g a4 a|
  }
}
DChords = \chordmode {
  g2 s4. s2 |
  g2 s4. s2 |
  g2 s4. s2 |
  a2:m s4. s2 |
}

E = \relative c'' {
  \repeat volta 2 {
    c8 d c h a g a h h h g | c8 d c h a g a h h h g |
    c8 d c h a g a h h h g | a g fis g a4 e8 a a a4 |
  }
}
EChords = \chordmode {
  d2 s4. g2 |
  d2 s4. g2 |
  d2 s4. g2 |
  a2:m s4. s2 |
}

F = \relative c'' {
  \repeat volta 2 {
    a8 g c h a g a h h h g | a8 g c h a g a h h h g |
    a8 g c h a g a h h h g | a g fis g a4 e8 a a a4 |
  }
}
FChords = \chordmode {
  d2 s4. g2 |
  d2 s4. g2 |
  d2 s4. g2 |
  a2:m s4. s2 |
}

% Trumpet solo

G = \relative c'' {
  g8 a a g c h a h g a4 | \noBreak
  g8 a a g c h a h g a4 | \noBreak
  g8 a a g c h a h g a4 | \noBreak
  a8 g fis g a4 e8 a a a4 |

  g8 a a g c h a h g a4 | \noBreak
  g8 a a g c h a h g a4 | \noBreak
  g8 a a g c h a h g a4 | \noBreak
  a8 g fis g a4 e8 a a a4 | \bar "||"
}
GChords = \chordmode {
  a2:m s4. s2 |
  a2:m s4. s2 |
  a2:m s4. s2 |
  a2:m s4. s2 |

  g2 s4. s2 |
  g2 s4. s2 |
  g2 s4. s2 |
  a2:m s4. s2 |
}

H = \relative c''{
  \repeat volta 2 {
    fis8 g fis e fis4 e8 fis fis fis e | fis g fis e fis4 e8 dis dis dis c |
    h c dis e fis4 e8 dis dis dis c | dis e dis4 c8 h a h h h4 |
  }
}
HChords = \chordmode {
  h2 s4. s2 |
  h2 s4. s2 |
  h2 s4. s2 |
  h2 a4.:m h2 |
}

I = \relative c''{
  \repeat volta 2 {
    dis8 e dis4 dis8 dis dis dis e dis4 | dis8 e dis4 c8 h a h h h fis |
    dis'8 e dis4 dis8 dis dis dis e dis4 | fis8 e dis4 c8 h a h h h4 |
  }
}
IChords = \chordmode {
  h2 s4. s2 |
  h2 a4.:m h2 |
  h2 s4. s2 |
  a2:m s4. h2 |
}

J = \relative c''{
  \repeat volta 2 {
    fis8 e dis4 c8 h c dis dis dis h | dis8 e dis4 c8 h c dis dis dis h |
    fis'8 e dis4 c8 h c dis dis dis h | dis8 e dis4 c8 h a h h h4 |
  }
}
JChords = \chordmode {
  a2:m s4. h2 |
  a2:m s4. h2 |
  a2:m s4. h2 |
  a2:m s4. h2 |
}

kopanica = {
  \clef treble
  \time 11/8
  \key a \minor
  \set Timing.beatStructure = #'(2 2 3 2 2)

  \A \break \A \break \B \break \A \break \B \break
  \C \break \D \break \E \break \F \break \B \break
  r2 r4. r2 | r2 r4. r2 |

  \G \break
  \key e \minor
  \H \break \I \break \J
}
kopanicaChords = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \AChords
  \AChords
  \BChords
  \AChords
  \BChords

  \CChords
  \DChords
  \EChords
  \FChords
  \BChords

  s2 s4. s2 | s2 s4. s2 |

  \GChords
  \HChords
  \IChords
  \JChords
}

\header {
  title = \markup{ Копаница }
  composer = "Bułgaria"
}
\score{
  <<
    \new Staff \kopanica
    \new ChordNames \kopanicaChords
  >>

  \layout{}
  \midi{
    \tempo 4 = 180
  }
}
