\version "2.20.0"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key g \minor
  \time 7/16
  \set Timing.beatStructure = #'(4 3)

  \repeat volta 2 {
    d8 a a8. | b8 g g8. | f8 g16 fis es d c | d16 es fis g a8. |
    d8 a a8. | b8 g g8. | f8 g16 fis es d c | d16 d d a d8. |
  }
  \break

  \repeat volta 2 {
    <g b>8 <g b>16 <fis a>16 <a c> <g b> <es g> | <fis a>8 <fis a>16 <es g> <d fis> <es g> <g b> |
    <fis a>8 <fis a>16 <es g> <g b> <fis a> <es g> | <d fis>8 <c es>16 <d fis> <es g> <fis a> <a c> |
    <g b>8 <g b>16 <fis a>16 <a c> <g b> <es g> | <fis a>8 <fis a>16 <es g> <d fis> <es g> <g b> |
    <fis a>8 <es g>16 <d fis> <c es> <d fis> <es g> | <d fis>16 <d fis> <d fis> <a d> <d fis>8. |
  }
}

instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  d4.. | g4..:m | c4..:m | d4.. |
  d4.. | g4..:m | c4..:m | d4.. |

  g4..:m |d4.. | c4..:m | d4.. |
  g4..:m |d4.. | c4..:m | d4.. |
}

vocal = \relative c' {
  \clef treble
  \key g \minor
  \time 7/16

  d4 fis8 g16 | a4 d8. | a4 g8. | a4~ a8. |
  d,4 fis8 g16 | a4 d8. | a4 g8. | a4~ a8. | \break
  \repeat volta 2 {
    <g b>4 <a c>8 <g b>16 | {<fis a>8 <es g>8} <a c>8. | <fis a>8 <es g> <d fis>8. | <d fis>8 <es g> <fis a>8. |
    <g b>4 <a c>8 <g b>16 | <fis a>8 <es g>8 <a c>8. | <fis a>8 <es g> <d fis>8.~ | <d fis>4.. |
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
  title = "Нанина Ленко"
  composer = Bułgaria
  tagline = "04.03.2026"
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
