\score {
  \header {
    title = "Szumiała leszczyna"
  }

  <<
    \new Voice = "melody" {
      \relative c' {
        \time 2/4
        \autoBeamOff

        c8 c f4 | g a8 a~ | a4 r4 |
        c,8 c f4 | g a8 a~ | a4 r4 |
        \repeat volta 2 { f4 f8 f | b4 b8 b | a8 a a4 | g8 g f4~ | f4 r4 | }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
        Szu -- mia -- ła lesz -- czy -- na,
        kie -- dy przez nią je -- choł,
        pła -- ka -- ła dziew -- czy -- na, bym jej nie od -- je -- choł.
      }
    }
  >>
}

\markup {
  \fill-line {
    \null
    \column {
      \line { Szumiała leszczyna, }
      \line { kiedy przez nią jechoł, }
      \line { |: płakała dziewczyna, }
      \line { bym jej nie odjechoł. :| }

      \null

      \line { Nie płacz, nie płacz dziewcze, }
      \line { pieszczotko ty moja, }
      \line { |: przywioze ci jabłko }
      \line { z tureckiego pola. :| }

    }

    \column {
      \line { Czerwone jabłuszko }
      \line { po stole sie toczy, }
      \line { |: dam ja je dziewczynie, }
      \line { co ma czorne oczy. :| }

      \null

      \line { Szumiała leszczyna, }
      \line { szumiała nad wodą, }
      \line { |: i bede szumiała, }
      \line { bom dziś jestem młodom. :| }
    }
    \null
  }
}
