\version "2.22.1"
\include "deutsch.ly"

aMelody = \relative c'' {
  \repeat volta 2 {
    g4 c8 b a a a | g4 c8 b a a a | g4 a8 a a e e | c'8 d d h c c c |
    d8 c c b a a a | c8 d c b a a a | g4 a8 a c b g | a8 a a e a4. |
  }
}
aChords = \chordmode {
  a2..:m | a2..:m | a2..:m | g2 c4. |
  d2:m a4.:m | d2:m a4.:m | a2:m g4.:m | a2..:m |
}

bMelody = \relative c'' {
  \repeat volta 2 {
    d8 c d e c c g | c8 h c4 c8 b b | g4 a8 a a e e | c'8 d d h c c c | \break
    d8 c d e c c g | c8 h c4 c8 b b | g4 a8 a c b g | a8 a a e a4. |
  }
}
bChords = \chordmode {
  g2 c4. | c2 g4.:m | a2..:m | g2 c4. |
  c2.. | c2 g4.:m | a2:m g4.:m | a2..:m |
}

cMelody = \relative c'' {
  \repeat volta 2 {
    g4 a8 a a e e | c'8 d d c c b b | g4 a8 a a e e | c'8 h c4 c8 b b |
    g4 a8 a a e e | c'8 d d c c b g | a4 r4 c8 b g |
  }
  \alternative {
    { a8 e b' g a a a }
    { a8 e b' g a b cis }
  }
}
cChords = \chordmode {
  a2..:m | a2..:m | a2..:m | a2..:m |
  a2..:m | a2:m g4.:m | a2:m g4.:m |
  a2:m a4.:m |
  a2:m a4. |
}

dMelody = \relative c'' {
  \repeat volta 2 {
    d8 cis b e, a a a | g8 a b a a e e | d'8 cis b e, a a a | g8 a b a a e e |
    d'8 cis b e, a a a | g8 a b a a e e | d'8 cis b e, a a a | g8 a b a a4. |
  }
}
dChords = \chordmode {
  a2.. | g2:m a4. | a2.. | g2:m a4. |
  a2.. | g2:m a4. | a2.. | g2:m a4. |
}

eMelody = \relative c'' {
  \repeat volta 2 {
    g8 a a e d' cis b | a8 e a b cis cis cis | g8 a a e d' cis b |
  }
  \alternative {
    { a8 g b a a e e | }
    { a8 g b a a4. | }
  }
}
eChords = \chordmode {
  a2.. | a2.. | a2.. |
  g2:m a4. |
  g2:m a4. |
}

fMelody = \relative c'' {
  \repeat volta 2 {
    gis8 a h cis d d cis | cis8 h cis cis cis h a | e'8 cis d e, h' d cis | cis h cis cis cis h a |
    gis8 a h cis d d cis | cis8 h cis cis cis h a | a8 e gis a a g fis |
  }
  \alternative {
    { fis8 e g fis fis cis fis | }
    { fis8 e g fis fis4. | }
  }
}
fChords = \chordmode {
  e2.. | a2.. | e2.. | a2.. |
  e2.. | a2.. | a2 e4.:m |
  fis2..:m |
  fis2..:m |
}

gMelody = \relative c'' {
  \repeat volta 2 {
    a8 a a b cis cis cis | a8 cis b a a e e | a8 e a b cis cis cis | d8 cis b a a e e |
    a8 a a b cis cis cis | a8 cis b a a e e | a8 e a b cis cis cis | d8 cis b a a4. |
  }
}
gChords = \chordmode {
  a2.. | a2.. | g2..:m | g2:m a4. |
  a2.. | a2.. | g2..:m | g2:m a4. |
}

melody = {
  \clef treble
  \key a \minor
  \time 7/8
  \set Timing.beatStructure = #'(2 2 3)

  \aMelody \break
  \mark \markup { \circle { \bold 2 } }
  \bMelody \break
  \mark \markup { \circle { \bold 3 } }
  \cMelody \break
  \mark \markup { \circle { \bold 4 } }
  \dMelody \break
  \mark \markup { \circle { \bold 5 } }
  \eMelody \break
  \mark \markup { \circle { \bold 6 } }
  \key a \major
  \fMelody \break
  \key a \minor
  \mark \markup { \circle { \bold 6 } }
  \gMelody \break
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \aChords
  \bChords
  \cChords
  \dChords
  \eChords
  \fChords
  \gChords
}

\header {
  title = "Тракия - Ръченица"
  tagline = "25.02.2023"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}


