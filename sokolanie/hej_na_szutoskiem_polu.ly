\bookpart {
  \header {
    title = "Hej na szutoskiem polu"
    composer = "Composer Name"
    tagline = ##f
  }

  \score {
    <<
      \new Voice = "melody" {
        \relative c' {
          \key f \major
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
          Hej na Szu -- to -- skiem po -- lu
          Hej bły -- szczy sie ko -- ro -- na
          Hej wszy -- stkie Sło -- to -- wian -- ki
          Hej war -- ta -- jo pie -- ro -- na!
        }
      }
    >>
  }

  \markup {
    \vspace #5
    \fill-line {
      \null
      \column {
        \line { Hej na Szutoskiem polu }
        \line { Hej błyszczy sie korona }
        \line { Hej wszystkie Słotowianki }
        \line { Hej wartajo pierona! }

        \null

        \line { Hej żebym jo umiała }
        \line { Hej to bym jo śpiwała }
        \line { Jakżeby sie po lesie }
        \line { Melodia radowała! }
      }
      \null
    }
  }
}
