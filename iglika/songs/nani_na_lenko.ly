\version "2.20.0"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key g \minor
  \time 7/16
  \set Timing.beatStructure = #'(4 3)

  \repeat volta 2 {
    a16 b b8 c16 b a | a8 a16 fis a b c | a8 g fis8. | fis8 g a8. |
    a16 b b8 c16 b a | a8 a16 fis a b c | a8 g fis8. | fis8 fis fis8. |
  }
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  g4:m s8. | c4:m s8. | d4 s8. | d4 s8. |
  g4:m s8. | c4:m s8. | d4 s8. | d4 s8. |
}

vocal = \relative c' {
  \clef treble
  \key g \minor
  \time 7/16

  d4 fis8 g16 | a4 d8. | a4 g8. | a4~ a8. |
  d,4 fis8 g16 | a4 d8. | a4 g8. | a4~ a8. | \break
  \repeat volta 2 {
    b4 c8 b16 | {a8 g8} c8. | a8 g fis8. | fis8 g a8. |
    b4 c8 b16 | a8 g8 c8. | a8 g fis8.~ | fis4~ fis8. |
  }

}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  d4 s8. | s4 s8. | c4:m s8. | d4 s8. |
  d4 s8. | s4 s8. | c4:m s8. | d4 s8. |
  g4:m s8. | c4:m s8. | d4 s8. | s4 s8. |
  g4:m s8. | c4:m s8. | d4 s8. | s4 s8. |
}

\header {
  title = "Нани на Ленко"
  composer = Bułgaria
}

\score {
  <<
    \new Staff \instrumental
    \new ChordNames \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \vocal
    \new ChordNames \vocalChords
  >>
}

