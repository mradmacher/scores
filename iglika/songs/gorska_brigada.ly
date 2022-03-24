\version "2.20.0"
\include "deutsch.ly"

instrumental = \relative c'' {
  \clef treble
  \key d \major
  \time 7/8
  \set Timing.beatStructure = #'(2 2 3)

  \repeat volta 2 {
    a4 a h8 h a | h4 a a8 a fis | a4 g g8 g e |
  }
  \alternative {{
    fis4 g a8 a d, |
  }{
    fis4 fis fis8 fis r | \bar "||"
  }}

  \repeat volta 2 {
    a4 g g8 fis e | fis4 g a8 a d, | a'4 g g8 fis e |
  }
  \alternative {{
    fis4 g fis8 fis d |
  }{
    fis4 fis fis8 fis r | \bar "||"
  }}
}
instrumentalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  d2 g4. | d2 s4. | a2 s4. |
  d2 s4. |
  d2 s4. |
  a2 s4. | d2 s4. | a2 s4. |
  d2 s4. |
  d2 s4. |
}

vocal = \relative c' {
  \clef treble
  \key d \major
  \time 7/8

  a'4 a g a8 | g4 fis r4. | a4 a g a8 | g4 fis r4. |
  \repeat volta 2 {
    a2 h4. | a4 g fis e8 | a4 g fis e8 | e4 d r4. |
  }

}
vocalChords = \chordmode {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  d2 a4. | d2 s4. | d2 a4. | d2 s4. |
  d2 g4. | d2 s4. | a2 s4. | d2 s4. |
}

\header {
  title = "Горска бригада"
  composer = Bułgaria
}

\score {
  <<
    \new Staff  \instrumental
    \new ChordNames \instrumentalChords
  >>
}

\score {
  <<
    \new Staff \vocal
    \new ChordNames \vocalChords
  >>
}

\markup {
  \fill-line {
    \column {
      \line { Ден по чистотата, }
      \line { рано пред зората, }
      \line { в горската прохлада, }
      \line { тръгнала бригада. }
    }
    \column {
      \line { Командир е Ежко, }
      \line { който стъпва тежко. }
      \line { Вълчо бригадира - }
      \line { клонки ще събира. }
    }
    \column {
      \line { Зайчето с метлата }
      \line { ще мете листата. }
      \line { Славеят чудесни }
      \line { ще им пее песни. }
    }
    \column {
      \line { А Мецана наша, }
      \line { ще им готви каша. }
      \line { Само за Лисана, }
      \line { нищо не остана! }
    }
  }
}
