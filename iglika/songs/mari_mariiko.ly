\version "2.22.1"
\include "deutsch.ly"

voiceA = \relative c' {
  \clef treble
  \key d \minor
  \time 2/4

  \repeat volta 2 {
    d4 a'8 a | a4 a8 g | a8 b a g | f8 e d4 | e8 g g e | f4 e | e8 g e d | d4 d |
  }
  \break

  e4 g8 e | f8 f f e | e4 g8 e | f4 e | e4 g8 e | f4 e | e8 g e d | d4 d |
  e4 g8 e | f8 f f e | e4 g8 e | f4 e | e4 g8 e | f4 e | e8 g e d | d4 d |
  \bar "||"
}

voiceB = \relative c' {
  \clef treble
  \key d \minor
  \time 2/4

  \repeat volta 2 {
    d4 d8 d | d4 d | d4 d8 d | c4 c | b4 b8 b | c4 c | c4 c8 d | d4 d |
  }

  a'4 c8 a | b8 b b a | a4 c8 a | b4 a | a4 c8 a | b4 a | a8 b a g | g4 g |
  c4 c8 c | b8 b b a | c4 c8 c | b4 a | a4 c8 a | b4 a | a8 b a g | a4 a |
}

voiceC = \relative c' {
  \clef treble
  \key d \minor
  \time 2/4

  \repeat volta 2 {
    d4 d8 d | c4 c | b4 b8 b | a4 a | g4 g8 g | a4 a | b4 c8 d | d4 d |
  }

  c4 c8 c | d8 d d c | c4 c8 c | d4 c | c4 c8 c | d4 c | c8 c c d | h4 h |
  c4 c8 c | d8 d d c | c4 c8 c | d4 c | c4 c8 c | d4 c | c8 c c d | d4 d |
}

\header{
  title = "Мари Марийко, карагьозлийко"
  tagline = "10.12.2023"
}
\score {
  <<
    \new ChoirStaff
      <<
        \new Staff \voiceA
        \new Staff \voiceB
        \new Staff \voiceC
      >>
  >>
}
