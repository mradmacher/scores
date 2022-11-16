\version "2.22.1"
\include "deutsch.ly"

aMelody = \relative c'' {
  \repeat volta 2 {
    \key a \minor
    g16 a a a a8 e'16 e | e16 d d c e e e8 | e16 d d c c d d e |
  }
  \alternative {
    { c16 c h g a a a e }
    { c'16 c h g a4 }
  }
}
aChords = \chordmode {
  a2:m | s2 | d2:m |
  e4:m a:m |
  e4:m a:m |
}

bMelody = \relative c'' {
  \repeat volta 2 {
    c16 d d e c c h g | a8 c16 d d c d e | c16 d d e c c h g | a8 c16 d d c d8 |
    c16 d d e c c h g | a8 c16 d d c d e | c16 d d e c c h g | a16 a a e a4 |
  }
}
bChords = \chordmode {
  d4:m e:m | a4:m d:m | d4:m e:m | a4:m d:m |
  d4:m e:m | a4:m d:m | d4:m e:m | a2:m |
}

cMelody = \relative c'' {
  \repeat volta 2 {
    e8 e16 e d8 cis16 cis | cis16 a b g a a a e | a8 cis16 cis b a b g | a16 a a8 e'16 e e8 |
    e8 e16 e d8 cis16 cis | cis16 a b g a a a e | a8 cis16 cis b a b g | a16 a a e a4 |
  }
}
cChords = \chordmode {
  a2 | g4:m a | a4 g:m | a2 |
  a2 | g4:m a | a4 g:m | a2 |
}

dMelody = \relative c'' {
  \repeat volta 2 {
    a8 cis16 cis b a b g | a8 cis16 cis b a b g | a8 cis16 cis b a b g | a16 a a8 e'16 e e8 |
    a,8 cis16 cis b a b g | a8 cis16 cis b a b g | a8 cis16 cis b a b g | a16 a a e a4 |
  }
}
dChords = \chordmode {
  a4 g:m | a4 g:m | a4 g:m | a2 |
  a4 g:m | a4 g:m | a4 g:m | a2 |
}

eMelody = \relative c'' {
  \repeat volta 2 {
    c16 d e e e c e e | g16 f e d e e e d | c16 d e e f f f g | f e d f e e e d |
    c16 d e e e c e e | g16 f e d e e e d | c16 d e e d c d e  | c c h g a4 |
  }
}
eChords = \chordmode {
  c2 | g4 c4 | c2 | g4 c4 |
  c2 | g4 c4 | c4 d:m | e4:m a:m |
}

fMelody = \relative c' {
  \key e \major
  \repeat volta 2 {
    e16 e fis gis a h gis8 | d16 e fis8 d16 cis cis h | e16 e fis gis a h gis8 | d16 e fis e e4 |
    e16 e fis gis a h gis8 | d16 e fis8 d16 cis cis h | e16 e fis gis a h gis8 | d16 e fis e e4 |
  }
}
fChords = \chordmode {
  e2 | h2:m | e2 | h4:m e |
  e2 | h2:m | e2 | h4:m e |
}

gMelody = \relative c' {
  \key e \major
  \repeat volta 2 {
    d16 e fis8 d16 cis cis h | e16 e fis gis a h gis8 | d16 e fis8 d16 cis cis h | e16 e fis e e4 |
    d16 e fis8 d16 cis cis h | e16 e fis gis a h gis8 | d16 e fis8 d16 cis cis h | e16 e fis e e4 |
  }
}
gChords = \chordmode {
  h2:m | e2 | h2:m | e2 |
  h2:m | e2 | h2:m | e2 |
}

melody = {
  \clef treble
  \time 2/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \mark \markup { \circle { \bold 1 } }
  \aMelody \break
  \mark \markup { \circle { \bold 2 } }
  \bMelody \break
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \italic "Fine" }
  %\mark \markup { \circle { \bold 3 } }
  \cMelody \break
  \mark \markup { \circle { \bold 4 } }
  \dMelody \break
  \mark \markup { \circle { \bold 5 } }
  \eMelody \break
  \mark \markup { \circle { \bold 6 } }
  \fMelody \break
  \mark \markup { \circle { \bold 7 } }
  \gMelody \break
  \mark \markup { \italic "D.C. al Fine" }
}

harmonies = \chords {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  \aChords
  \bChords
  \cChords
  \dChords
  \eChords
  \fChords
  \gChords
}

\header {
  title = "Тракия - Трите пъти"
  tagline = "2022"
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \harmonies
  >>
}
