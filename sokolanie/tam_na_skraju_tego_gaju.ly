\score {
  \header {
    title = "Tam na skraju tego gaju"
  }
  <<
    \new Voice = "melody" {
      \relative c'' {
        \time 3/4
        \autoBeamOff

        g2 g4 | e2 e4 | g2 g4 | e2 e4 | g2 e4 | a2 g4 | g4 f2 | r2. |
        \repeat volta 2 { d2 e4 | f2 g4 | h2 a4 | g2 f4 | e4 g a | g2 f4 | f4 e2 | r2. | }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
         Tam na skr -- aju te -- go ga -- ju,
         gdzie An -- dzia sta -- ja -- ła,
         przy -- szedł do niej pan ga -- jo -- wy,
         że -- by mu bu -- zi da -- ła.
      }
    }
  >>
}

\markup {
  \fill-line {
    \null
    \column {
      \line { Tam na skraju tego gaju, }
      \line { gdzie Andzia stajała, }
      \line { |: przyszedł do niej pan gajowy, }
      \line { żeby mu buzi dała. :| }

      \null

      \line { Nie ma nas tu tylko dwoje, }
      \line { dwoje młodych ludzi. }
      \line { |: Jakbyśmy sie pokochali, }
      \line { wszak nas nikt nie widzi. :| }

      \null

      \line { Nie ma nas tu tylko dwoje, }
      \line { trzeci Bóg na niebie. }
      \line { |: Jakbyś ty mnie Andziu chciała, }
      \line { chodziłbym ja do ciebie. :| }
    }
    \null
    \column {
      \line { Z jedną stałeś, z drugą spałeś, }
      \line { z trzecią rozmawiałeś, }
      \line { |: a na skraju tego gaju, }
      \line { czwartą całowałeś. :| }

      \null

      \line { Oj nieprawda, oj nieprawda, }
      \line { bo z kuzynką stałem, }
      \line { |: tylko dla swej przyjemności, }
      \line { ja ją pocałowałem. :| }

      \null

      \line { Nie kłam chłopcze, nie kłam Janku }
      \line { oczami swoimi. }
      \line { |: Ty masz inną, ja innego, }
      \line { będzie koniec z nami. :| }
    }
    \null
  }
}


