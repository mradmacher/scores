\score {
  \header {
    title = "Wieź mnie konisiu wieź"
  }
  <<
    \new Voice = "melody" {
      \relative c' {
        \time 2/4
        \autoBeamOff

        d4 fis | e8 g4 e8 | d2 | fis4 a | a8 h4 e,8 | a2 |
        \repeat volta 2 { fis4 a | h8 a g fis | e4 g | a8 g fis e | d4 fis | e8 g4 e8 | d2 | }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
         Wieź mnie ko -- ni -- siu wieź,
         przez te zie -- lo -- no wieś.
         Przez gó -- ry do -- ly -- ny,
         przez gó -- ry do -- ly -- ny,
         do ład -- ny dziew -- cy -- ny.
      }
    }
  >>
}

\markup {
  \vspace #2
  \fill-line {
    \null
    \column {
      \line { Wieź mnie konisiu wieź, }
      \line { przez te zielono wieś. }
      \line { |: Przez góry dolyny, }
      \line { przez góry dolyny, }
      \line { do ładny dziewcyny. :| }

      \null

      \line { Z płocika na płocik, }
      \line { przelatuje srocka. }
      \line { |: Tego chłopca kochom,  }
      \line { Tego chłopca kochom,  }
      \line { co mo corne łocka. :| }
    }
    \null
    \column {
      \line { Co mo corne łocka }
      \line { i corno cupryne. }
      \line { |: Puście mie do niego, }
      \line { puście mie do niego, }
      \line { bo już chyba zgine. :| }

      \null

      \line { Szumi dookoła las, }
      \line { dziadek na babke wlazł. }
      \line { |: Rozgrzebuje piórka, }
      \line { szuka gdzie ta dziurka, }
      \line { żeby se użył raz. :| }
    }
    \null
  }
}
