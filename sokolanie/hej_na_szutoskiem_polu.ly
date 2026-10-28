\score {
  \header {
    title = "Hej na szutoskiem polu"
    composer = ""
    tagline = ##f
  }
  <<
    \new Voice = "melody" {
      \relative c' {
        \time 3/8
        \autoBeamOff

        c8 f f | a4 f8 | d8 c4 |
        g'8 g a | b4 d8 | d8 c4 |
        c,8 f f | a4 f8 | d8 c4 |
        b'8 g f | e4 g8 | g8 f4 | \bar "||"
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
        Hej na szu -- to -- skiem po -- lu
        hej bły -- szczy sie ko -- ro -- na
        hej wszy -- stkie Sło -- to -- wian -- ki
        hej war -- ta -- jo pie -- ro -- na!
      }
    }
  >>
}

\markup {
  \fill-line {
    \null
    \column {
      \line { Hej na szutoskiem polu }
      \line { hej błyszczy sie korona }
      \line { hej wszystkie Słotowianki }
      \line { hej wartajo pierona! }
    }

    \column {
      \line { Hej żebym jo umiała }
      \line { hej to bym jo śpiwała }
      \line { jakżeby sie po lesie }
      \line { Melodia radowała! }
    }
    \null
  }
}
