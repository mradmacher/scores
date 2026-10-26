\bookpart {
  \header {
    title = "Leć głosie po rosie"
    tagline = ##f
  }

  \score {
    <<
      \new Voice = "melody" {
        \relative c' {
          \time 3/4
          \autoBeamOff

          f4 d f | b2 b4 | a2 r4 | c4 c b | a2 g4 | f2 r4 |
          \repeat volta 2 { f4 f f | g2 g4 | f2 r4 | c4 d es | f2 es4 | d2 r4 }
        }
      }
      \new Lyrics \lyricsto "melody" {
        \lyricmode {
          Leć gło -- sie po ro -- sie
          pro -- sto ku dwo -- ro -- wi.
          Po -- wiedz do -- bry wie -- czór
          me -- mu ko -- chan -- ko -- wi.
        }
      }
    >>
  }

  \markup {
    \vspace #5
    \fill-line {
      \null
      \column {
        \line { Leć głosie po rosie }
        \line { prosto ku dworowi. }
        \line { |: Powiedz dobry wieczór }
        \line { memu kochankowi. :| }

        \null

        \line { Leć głosie po rosie }
        \line { prosto ku leszczynie. }
        \line { |: Powiedz dobry wieczór }
        \line { tej mojej dziewczynie. :| }

        \null

        \line { Daleko szeroko }
        \line { mego ojca pole, }
        \line { |: ale jeszcze dalej }
        \line { jest kochanie moje. :| }

        \null

        \line { Idź głosie po rosie }
        \line { prosto ku dworowi. }
        \line { |: Powiedz dobranocke }
        \line { memu Jasieńkowi. :| }

        \null

        \line { Jak ja bede krzykać }
        \line { pódzie w góre mój głos. }
        \line { |: Usłyszysz Jasieńku }
        \line { ale mie nie poznasz. :| }
      }
      \null
    }
  }
}
