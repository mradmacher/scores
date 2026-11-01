\score {
  \header {
    title = "Hej płynie potok szeroko"
  }
  <<
    \new Voice = "melody" {
      \relative c' {
        \time 2/4
        \autoBeamOff

        e8 e4 fis8 | e4 d | cis e | a2 | cis8 cis4 d8 | cis4 h | a fis | e2 |
        \repeat volta 2 { fis8 fis4 a8 | gis4 fis | e8 e4 fis8 | e4 cis | h8 h4 cis8 | d4 e | cis2 | }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
        Hej pły -- nie po -- tok sze -- ro -- ko,
        hej pły -- nie po -- tok w_do -- li -- nie.
        Sło -- necz -- ko zasz -- ło, smut -- no na świe -- cie
        sa -- mot -- nej dziew -- czy -- nie.
      }
    }
  >>
}

\markup {
  \fill-line {
    \null
    \column {
      \line { Hej płynie potok szeroko, }
      \line { hej płynie potok w dolinie. }
      \line { |: Słoneczko zaszło, smutno na świecie }
      \line { samotnej dziewczynie. :| }

      \null

      \line { Dawniej mi jaśniej świeciło, }
      \line { złote słoneczko na niebie. }
      \line { |: Szczęśliwsza byłam, póki nie znałam }
      \line { kochania i Ciebie. :| }

      \null

      \line { Czemuż sie o mnie nie pyta, }
      \line { ojca matuli i ludzi? }
      \line { |: Czyś ty nie wiedział że sie w mym sercu }
      \line { kochanie obudzi. :| }
    }
    \null
    \column {
      \line { Słońce zachodzi na niebie }
      \line { i woda płynie w dolinie. }
      \line { |: Już na tym świecie nikt nie pocieszy }
      \line { samotnej dziewczyny. :| }

      \null

      \line { Nie smuć sie miła dziewczyno, }
      \line { nie smuć sie drogi aniele. }
      \line { |: Przyjdzie ta chwila, że sie złączymy }
      \line { ślubami w kościele. :| }
    }
    \null
  }
}
