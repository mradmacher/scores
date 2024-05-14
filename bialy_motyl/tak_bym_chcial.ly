\version "2.22.1"
\include "deutsch.ly"

pianoR = \relative c' {
  \key d \minor
  \time 2/4

  r8 <d f>8 r8 <d f>8 | r8 <c e>8 r8 <c e>8 |
  r8 <d f>8 r8 <d f>8 | r8 <c e>8 r8 <c e>8 |
  \repeat volta 2 {
    r8 <d f>8 r8 <d f>8 | r8 <c e>8 r8 <c e>8 |
    r8 <d f>8 r8 <d f>8 |
  } \alternative {
    { r8 <c e>8 r8 <c e>8 | }
    { r8 <c e>8 r4 | \bar "|." }
  }
}
pianoL = \relative c {
  \clef bass
  \time 2/4

  d4 d4 | c4 c4 | d4 d4 | c4 c4 |
  \repeat volta 2 {
    d4 d4 | c4 c4 | d4 g,4 |
  } \alternative {
    { c4 c4 | }
    { c4 c4 | \bar "|." }
  }
}

solo = \relative c' {
  \time 2/4

  d16 e f8 d f | e8 c a' g | d16 e f8 d f | e8 c g'4 |
  \repeat volta 2 {
    d16 e f8 d f | e8 c g' a | d,16 e f8 d f | e8 c c4 |
  }
}

saksofon = \relative c' {
  \key d \minor
  \time 2/4

  \solo
  \break

  d4-. r4 | c4-. r4 | d4-. r4 | c4-. r4
  \repeat volta 2 {
    d4-. r4 | c4-. r4 | d4-. d4-. | c4-. r4 |
  }
}

flet = \relative c'' {
  \key d \minor
  \time 2/4

  \transpose d d' \solo
  \break

  f4-. r4 | e4-. r4 | f4-. r4 | e4-. r4
  \repeat volta 2 {
    f4-. r4 | e4-. r4 | f4-. f4-. | e4-. r4 |
  }
}

skrzypce = \relative c'' {
  \key d \minor
  \time 2/4

  \solo
  \break

  a4-. r4 | c4-. r4 | a4-. r4 | c4-. r4
  \repeat volta 2 {
    a4-. r4 | c4-. r4 | a4-. h4-. | c4-. r4 |
  }
}

wokal = \relative c' {
  \key d \minor
  \time 2/4

  d8 f d f | e4 c | d8 f d f | e4 c |
  \repeat volta 2 {
    d8 f d f | c8 e c e | d8 f d f | e4 c |
  }
}

\header {
  title = "Tak bym chciał"
  tagline = "14.05.2024"
}
\score {
  \new PianoStaff = piano \with {
    instrumentName = "Fortepian"
  }
  <<
    \new Staff \pianoR
    \new Staff \pianoL
  >>
}

\score {
  \new Staff = saksofon \with {
    instrumentName = "Saksofon"
  }
  <<
    \transpose d h \saksofon
  >>
}

\score {
  \new Staff = flet \with {
    instrumentName = "Flet"
  }
  <<
    \flet
  >>
}

\score {
  \new Staff = skrzypce \with {
    instrumentName = "Skrzypce"
  }
  <<
    \skrzypce
  >>
}

\score {
  \new Staff = wokal \with {
    instrumentName = "Śpiew"
  }
  <<
    \wokal
  >>
}

\markup {
  \column {
    \line { Tak bym chciał pobiegać, }
    \line { Tak bym chciał poskakać, }
    \line { Ale przecież, ale przecież, }
    \line { Przecież muszę płakać. }

    \null

    \line { Tak bym sobie pospał }
    \line { Każdą ciemną nocką, }
    \line { Ale przecież, ale przecież, }
    \line { Płakać muszę głośno. }
  }

  \hspace #10
  \column {
    \line { Tak bym się pobawił, }
    \line { Z tatą zanim zasnę, }
    \line { Ale przecież, ale przecież, }
    \line { Płakać muszę strasznie. }

    \null

    \line { Tak bym się pobawił, }
    \line { Z mamą kiedy wstanę, }
    \line { Ale przecież, ale przecież, }
    \line { Płakać nie przestanę. }
  }

  \hspace #10
  \column {

    \line { Taki jestem mały, }
    \line { Taki malusieńki, }
    \line { Ale przecież, ale przecież, }
    \line { Wkrótce będę wielki. }
  }
}
