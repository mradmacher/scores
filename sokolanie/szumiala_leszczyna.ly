\bookpart {
  \header {
    title = "Szumiała leszczyna"
    composer = ""
    tagline = ##f
  }

  \score {
    <<
      \new Voice = "melody" {
        \relative c' {
          \key f \major
          \time 2/4
          \autoBeamOff

          c8 c f4 | g a8 a~ | a4 r4 |
          c,8 c f4 | g a8 a~ | a4 r4 |
          \repeat volta 2 { f4 f8 f | b4 b8 b | a8 a a4 | g8 g f4~ | f4 r4 | }
        }
      }
      \new Lyrics \lyricsto "melody" {
        \lyricmode {
          Szu -- mia -- ła lesz -- czy -- na
          kie -- dy przez nią je -- choł,
          pła -- ka -- ła dziew -- czy -- na bym jej nie od -- je -- choł.
        }
      }
    >>
  }

  \markup {
    \vspace #5
    \fill-line {
      \null
      \column {
        \line { Szumiała leszczyna kiedy przez nią jechoł, }
        \line { |: płakała dziewczyna bym jej nie odjechoł. :| }

        \null

        \line { Nie płacz, nie płacz dziewcze, pieszczotko ty moja, }
        \line { |: przywioze ci jabłko z tureckiego pola. :| }

        \null

        \line { Czerwone jabłuszko po stole sie toczy, }
        \line { |: dam ja ej dziewczynie, co ma czorne oczy. :| }

        \null

        \line { Szumiała leszczyna, szumiała nad wodą, }
        \line { |: i bede szumiała bom dziś jestem młodom. :| }
      }
      \null
    }
  }
}

