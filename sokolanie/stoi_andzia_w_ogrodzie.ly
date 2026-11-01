\score {
  \header {
    title = "Stoi Andzia w ogrodzie"
  }
  <<
    \new Voice = "melody" {
      \relative c' {
        \time 2/4
        \autoBeamOff

        e8 e e d | cis4 e | a2 | h8 h h a | gis4 fis | e2 |
        \repeat volta 2 { e4 cis' | h a | gis8 gis fis4 | gis8 gis fis4 | e4. fis8 | gis8 fis e d | cis2 | }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
         Sto -- i An -- dzia w_o -- gro -- dzie
         po ko -- la -- na we wo -- dzie.
         Sto -- i An -- dzia w_o -- gro -- dzie, w_o -- gro -- dzie
         po ko -- la -- na we wo -- dzie.
      }
    }
  >>
}

\markup {
  \fill-line {
    \null
    \column {
      \line { Stoi Andzia w ogrodzie }
      \line { po kolana we wodzie. }
      \line { |: Stoi Andzia w ogrodzie, w ogrodzie }
      \line { po kolana we wodzie. :| }

      \null

      \line { Chłopcy się tam kąpali }
      \line { i na Andzie wołali. }
      \line { |: Chłopcy się tam kąpali, kąpali }
      \line { i na Andzie wołali. :| }
    }
    \null
    \column {
      \line { Chodźże Andziu chodź sama }
      \line { do stodoły do siana. }
      \line { |: Chodźże Andziu chodź sama, chodź sama }
      \line { do stodoły do siana. :| }
    }
    \null
  }
}

