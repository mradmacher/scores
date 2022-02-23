\version "2.16.2"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key d \minor
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \repeat volta 2 {
    a8 a g a b cis d | e e f e d cis b | cis cis d cis b a g |
  }
  \alternative {{
    a8 a g a b cis4 |
  }{
    a4.~ a4 s4 | \bar "||"
  }}
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  a4. s2 | a4. s2 | g4.:m s2 |
  a4. s2 |
  a4. s2
}

vocal = \relative c' {
  \clef treble
  \key d \minor
  \time 7/8

  d4 a8 d4 e | f4 e8 d2 | d4 a8 d4 e | f4 e8 d2 |
  d4 a8 d4 e | g4 f8 e4 d | e4 d8 cis4 b | a4.~ a2 | \break
  \repeat volta 2 {
    a'4 a8 g4 f | a4.~ a2 | g4 f8 e4 d | f4.~ f2 |
    e4 f8 g4 a | g4 f8 e4 d | e4 d8 cis4 b | a4.~ a2 |
  }

}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  d4.:m s2 | d4.:m s2 | d4.:m s2 | d4.:m s2 |
  d4.:m s2 | a4. s2 | g4.:m s2 | a4. s2 |
  d4.:m s2 | d4.:m s2 | a4. s2 | d4.:m s2 |
  a4. s2 | a4. s2 | g4.:m s2 | a4. s2 |
}

\header {
  title = "Имате ли вино"
  composer = Macedonia
}

\score {
  <<
    \new Staff \transpose d e \instrumental
    \new ChordNames \transpose d e \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \transpose d e \vocal
    \new ChordNames \transpose d e \vocalChords
  >>
}
