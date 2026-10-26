\bookpart {
  \header {
    title = "Szumi woda i wali"
    tagline = ##f
  }

  \score {
    <<
      \new Voice = "melody" {
        \relative c' {
          \time 2/4
          \autoBeamOff

          d4. es8 | f4 g | es f | d2 |
          \repeat volta 2 {
            f8 g a b | c8 c4 b8 | a8 a4 g8 | f8 b4 b8 |
            d,4. es8 | f4 g | es f | d2 |
          }
        }
      }
      \new Lyrics \lyricsto "melody" {
        \lyricmode {
          Szu -- mi wo -- da i wa -- li.
          Szu -- mi wo -- da i wa -- li i wa -- li i wa -- li,
          tam się chłop -- cy ką -- pa -- li.
        }
      }
    >>
  }

  \markup {
    \vspace #5
    \fill-line {
      \null
      \column {
        \line { Szumi woda i wali. }
        \line { |: Szumi woda i wali i wali i wali, }
        \line { tam się chłopcy kąpali. :| }

        \null

        \line { Gdzie sie chłopcy kąpali. }
        \line { |: Chodź dziewczyno chodź sama, chodź sama, }
        \line { do stodoły do siana. :| }

        \null

        \line { A co mamcia mi powie? }
        \line { |: A ty mamie tak powiedz, tak powiedz, tak powiedz, }
        \line { żeś chodziła na spowiedź. :| }
      }
      \null
    }
  }
}
