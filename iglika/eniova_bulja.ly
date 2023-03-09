\version "2.22.1"
\include "deutsch.ly"

introMelody = \relative c'' {
  \key g \major
  g4 c8 h | d8 g, a4 | d4 c8 h | g4 c8 h | d8 g, a4 | a4 a |
}
introChords = \chordmode {
  g2 | a2:m | e2:m | c2 | a2 | d2 |
}

aMelody = \relative c'' {
  \key g \major
  g4 d'8 c | d8 e e c | d4 c8 h | g4 d'8 c | d8 e e c | d4 c8 h | \break
  g4 c8 h | d8 g, a4 | d4 c8 h | g4 c8 h | d8 g, a4 | a4 a | \break
  g4 c8 h | d8 g, a4 | d4 c8 h | g4 c8 h | d8 g, a4 | a4 a |
}
aaMelody = \relative c'' {
  \key g \major
  \repeat volta 2 { \aMelody }
}
abMelody = \relative c'' {
  \key g \major
  \aMelody
}
aChords = \chordmode {
  g2 | c2 | d2 | g2 | c2 | d2
  g2 | a2:m | d2 | g2 | a2:m | d2 |
  g2 | a2:m | e2:m | c2 | a2 | d2 |
}

bMelody = \relative c'' {
  \key d \major
  \repeat volta 2 {
    a4 d8 cis | cis8 h cis4 | cis8 g a h | a8 a a16 h cis d | e4 d8 cis | cis8 h cis4 | cis8 g a h |
  }
  \alternative {
    { a8 a a e | }
    { a8 h cis d }
  }
}

bChords = \chordmode {
  a2 | a2 | g2 | a2 | a2 | a2 | g2 |
  a2 |
  a2:7 |
}

cMelody = \relative c'' {
  \key g \major
  \repeat volta 2 {
    d4 g8 fis | fis8 e fis4 | fis8 c d e | d8 d d16 e fis g | a4 g8 fis | fis8 e fis4 | fis8 c d e |
  }
  \alternative {
    { d8 d d a }
    { d8 c h a }
  }
}

cChords = \chordmode {
  d2 | d2 | c2 | d2 | d2 | d2 | c2 |
  d2 |
  d2:7 |
}

dMelody = \relative c'' {
  \key h \minor
  h8 h h h | cis8 d h4 | cis8 d e4 | h4. fis'8 | fis8 e d4 | d8 cis h4 | cis8 a h cis | h8 h h g | \break
  h8 h h h | cis8 d h4 | cis8 d e4 | h4. fis'8 | fis8 e d4 | d8 cis h4 | d8 a d e | d8 c h a |
}

dChords = \chordmode {
  h2:m | h2:m | e2:m | h2:m | h2:m | e2:m | fis2:m | h2:m |
  g2 | e2 | a2 | e2:m | h2:m | h2:m | d | d2:7 |
}

eIntroMelody = \relative c'' {
  \key d \minor
  a4 a a4 a8 a4 a | a8 a a4 a4 a8 a4 a |
}
eIntroChords = \chordmode {
  a2:m s4. s2 | a2:m s4. s2 |
}

% -----------------

eMelody = \relative c'' {
  \key d \minor
  \repeat volta 2 {
    c2 c8 b c a a a4 | d4 c8 b c c b a a a4 | b8 c d e f f e f g g e |
  }
  \alternative {
    { e8 f f d e e f e e e4 }
    { d8 c c b a a a a a a4 }
  }
}
eChords = \chordmode {
  a2:m g4.:m a2:m | d2:m g4.:m a2:m | g2:m d4.:m c2 |
  b2 g4. c2 |
  b2 d4.:m a2:m |
}

fMelody = \relative c'' {
  \key d \minor
  d8 e f g e f f e e d c | b c d e f f e d d d4 | a'8 g g f e f f e e d c | b c d e f f e d d d4 \bar "||"
  d8 e f g e f f e e d c | d8 e f g a a g a a a4 | a8 h c c c c h h h a4 | d8 d c h c c h a a a4 \bar "||"
}
fChords = \chordmode {
  d2:m g4. c2 | b2 s4. d2:m | d2:m g4. c2 | b2 s4. d2:m |
  d2:m g4. c2 | b2 s4. d2:m | a2:m s4. s2 | d2:m s4. a2:m |
}

gMelody = \relative c'' {
  \key d \minor
  \repeat volta 2 {
    d8 e f g e f f e e d c | b c d e f f e d d d4 | a'8 g g f e f f e e d c | b c d e f f e d d d4 |
  }
}
gChords = \chordmode {
  d2:m g4. c2 | b2 s4. d2:m | d2:m g4. c2 | b2 s4. d2:m |
}

eniovaBuljaStaff = {
  \clef treble
  \time 2/4
  \mark \markup { "Wstęp" }
  \introMelody \break
  \mark \markup { \circle { \bold 1 } }
  \aaMelody \break
  \mark \markup { \circle { \bold 2 } \musicglyph "scripts.segno" }
  \bMelody \break
  \cMelody \break
  \mark \markup { \circle { \bold 3 } }
  \abMelody \break
  \mark \markup { \circle { \bold 4 } }
  \dMelody \break
  \mark \markup { \circle { \bold 5 } }
  \abMelody \break
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "Fine" }

  %\mark \markup { \circle { \bold 6 } }
  \bMelody \break
  \cMelody \break
  \mark \markup { \circle { \bold 7 } }
  \abMelody \break

  \time 11/8
  \set Timing.beatStructure = #'(2 2 3 2 2)
  \mark \markup { \bold "Kopanica" }
  \eIntroMelody \break
  \mark \markup { \circle { \bold a } }
  \eMelody \break
  \mark \markup { \circle { \bold b } }
  \fMelody \break
  \mark \markup { \circle { \bold c } }
  \transpose d g \eMelody \break
  \mark \markup { \circle { \bold d } }
  \gMelody \break
  \mark \markup { \circle { \bold e } }
  \eMelody
  \time 2/4
  r4 r |
  \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #right
  \mark \markup { "D.S. al Fine" }
}

eniovaBuljaChords = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t
  \introChords
  \aChords
  \bChords
  \cChords
  \aChords
  \dChords
  \aChords

  \bChords
  \cChords
  \aChords

  \eIntroChords
  \eChords
  \fChords
  \transpose d g \eChords
  \gChords
  \eChords
}

\header {
  title = \markup { Еньова буля }
  tagline = "09.03.2023"
}
\score {
  <<
    \new Staff \eniovaBuljaStaff
    \new ChordNames \eniovaBuljaChords
  >>
}

