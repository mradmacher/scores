\version "2.22.1"
\include "deutsch.ly"

xMelody = \relative c'' {
  \key a \minor
  h8. a16 \times 2/3 { a8 g a } | e8. a16 \times 2/3 { a8 g a } | h8. a16 \times 2/3 { a8 g a } | e8. a16 \times 2/3 { a8 g a } |
  h8. a16 \times 2/3 { a8 g a } | e8. a16 \times 2/3 { a8 g a } | h8. a16 \times 2/3 { a8 g a } | a4 r4 |
}
xChords = {
  a2 | a2 | a2 | a2 | a2 | a2 | a2 | a2 |
}

aMelody = \relative c'' {
  \repeat volta 2 {
    \key a \major
    a4 h8. cis16 | d8. h16 cis4 | d8. cis16 \times 2/3 { cis8 h cis } | a4 a |
    \key a \minor
    h4 c | d8. c16 h8. a16 | \times 2/3 { g8 a a } h8. a16 |
  }
  \alternative {
    { a4 e4 }
    { a8. e16 a4 }
  }
}
aChords = \chordmode {
  a2 | a2 | e2 | a2 |
  a2:m | a2:m | d2:m |
  a4:m e |
  a2:m |
}

bMelody = \relative c'' {
  \key a \minor
  \repeat volta 2 {
    h4 c | d8. c16 h8. a16 | \times 2/3 { g8 a a } h8. a16 | a4 e |
    h'4 c | d8. c16 h8. a16 | \times 2/3 { g8 a a } h8. a16 | a8. e16 a4 |
  }
}
bChords = \chordmode {
  a2:m | a2:m | d2:m | a2:m
  a2:m | a2:m | d2:m | a2:m
}

cMelody = \relative c'' {
  \key a \major
  \repeat volta 2 {
    e4 e | \times 2/3 { e8 d h } cis4 | e8. e16 h8. a16 | a8. h16 cis4 |
    e4 e | \times 2/3 { e8 d h } cis4 | e8. e16 h8. a16 | a8. e16 a4 |

  }
}
cChords = \chordmode {
  a2 | a2 | e2 | a2 |
  a2 | a2 | e2 | a2 |
}

ccMelody = \relative c'' {
  \key a \major
  \repeat volta 2 {
    \times 2/3 { d8 e e } e8. e16 | \times 2/3 { e8 d h } cis4 | e8. e16 h8. a16 | a8. h16 cis4 |
    \times 2/3 { d8 e e } e8. e16 | \times 2/3 { e8 d h } cis4 | e8. e16 h8. a16 | a8. e16 a4 |
  }
}

dMelody = \relative c'' {
  \key g \major
  \repeat volta 2 {
    h4 c | h4 \times 2/3 { d8 c d } | h4 c | h8. a16 \times 2/3 { a8 g a } |
    h4 c | h4 \times 2/3 { d8 c d } | h4 c |
  }
  \alternative {
    { h8. a16 \times 2/3 { a8 g a } }
    { h8. a16 a4 }
  }
}
dChords = \chordmode {
  g2 | g2 | g2 | d2 |
  g2 | g2 | g2 |
  d2 |
  d2 |
}

ddMelody = \relative c'' {
  \key g \major
  h4 c | h4 \times 2/3 { d8 c d } | h4 c | h8. a16 \times 2/3 { a8 g a } |
  h4 c | h4 \times 2/3 { d8 c d } | h4 c | h8. a16 \times 2/3 { a8 g a } | \break
  h4 c | r4^\markup { "P.G." } \times 2/3 { d8 c d } | h4 c | h8. a16 \times 2/3 { a8 g a } |
  h4 c | r4^\markup { "P.G." } \times 2/3 { d8 c d } | h4 c | h8. a16 \times 2/3 { a8 g a } |
}
ddChords = \chordmode {
  g2 | g2 | g2 | d2 |
  g2 | g2 | g2 | d2 |
  g2 | g2 | g2 | d2 |
  g2 | g2 | g2 | d2 |
}

eMelody = \relative c'' {
  \key a \minor
  \repeat volta 2 {
    \times 2/3 { cis8 d e d cis h } | cis8. a16 \times 2/3 { a8 g a } |
    \times 2/3 { h8 c d c h a } | h8. a16 \times 2/3 { a8 g a } |
    \times 2/3 { cis8 d e d cis h } | cis8. a16 \times 2/3 { a8 g a } |
    \times 2/3 { h8 c d c h a } |
  }
  \alternative {
    { h8. a16 \times 2/3 { a8 g a } }
    { h8. a16 a4 }
  }
}
eChords = \chordmode {
  a2 | a2 | a2:m | a2:m |
  a2 | a2 | a2:m |
  a2:m |
  a2:m |
}

fMelody = \relative c'' {
  \key a \minor
  \repeat volta 2 {
    h8. a16 \times 2/3 { a8 g a } | e8. a16 \times 2/3 { a8 g a } | h8. a16 \times 2/3 { a8 g a } | e8. a16 a4 |
    h8. a16 \times 2/3 { a8 g a } | e8. a16 \times 2/3 { a8 g a } | h8. a16 \times 2/3 { a8 g a } | e8. a16 a4 |
  }
}
fChords = \chordmode {
  a2 | a2 | a2 | a2 |
  a2 | a2 | a2 | a2 |
}

gMelody = \relative c'' {
  \key g \major
  \times 2/3 { h8 c d c h a } | g8. g16 g4 | \times 2/3 { h8 c d c h a } | g4 g4 |
  \times 2/3 { h8 c d c h a } | g8. g16 g4 | \times 2/3 { h8 c d c h a } | g4 g4 |
}
gChords = \chordmode {
  g2 | g2 | g2 | g2 |
  g2 | g2 | g2 | g2 |
}

hMelody = \relative c'' {
  \key a \minor
  \repeat volta 2 {
    \times 2/3 { h8 c d c h a } | d8. d16 a8. h16 | c4 h8. a16 | d8. d16 a4 |
    \times 2/3 { h8 c d c h a } | d8. d16 a8. h16 | c4 h8. a16 | a8. e16 a4 |
  }
}
hChords = \chordmode {
 a2:m | a2:m | a2:m | a2:m |
 a2:m | a2:m | a2:m | a2:m |
}

melody = {
  \clef treble
  \time 2/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \xMelody \break
  \mark \markup { \circle { \bold 1 } }
  \aMelody \break
  \mark \markup { \circle { \bold 2 } }
  \bMelody \break
  \mark \markup { \circle { \bold 3 } }
  \aMelody \break
  \mark \markup { \circle { \bold 4 } }
  \bMelody
  \mark \markup { \circle { \bold 5 } }
  \cMelody \break
  \ccMelody \break
  \mark \markup { \circle { \bold 6 } }
  \dMelody \break
  \mark \markup { \circle { \bold 7 } }
  \eMelody \break
  \mark \markup { \circle { \bold 8 } }
  \ddMelody \break
  \mark \markup { \circle { \bold 9 } }
  \fMelody \break

  \mark \markup { \circle { \bold 10 } }
  \aMelody \break
  \mark \markup { \circle { \bold 11 } }
  \bMelody \break
  \mark \markup { \circle { \bold 12 } }
  \cMelody \break
  \ccMelody \break

  \mark \markup { \circle { \bold 13 } }
  \gMelody \break
  \mark \markup { \circle { \bold 14 } }
  \hMelody \break
  \mark \markup { \circle { \bold 15 } }
  \gMelody \break
  \mark \markup { \circle { \bold 16 } }
  \hMelody \break
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \xChords
  \aChords
  \bChords
  \aChords
  \bChords
  \cChords
  \cChords
  \dChords
  \eChords
  \ddChords
  \fChords

  \aChords
  \bChords
  \cChords
  \cChords

  \gChords
  \hChords
  \gChords
  \hChords
}

\header {
  title = "Тракия - Джиновско"
  tagline = "09.02.2022"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}

