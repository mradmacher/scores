\score {
  \header {
    title = "Wyjechał leśniczy z rana"
  }
  <<
    \new Voice = "melody" {
      \relative c' {
        \time 2/4
        \autoBeamOff

        a8. d16 d8 fis | fis4 e | g8. cis,16 cis8 e | e4 d |
        a8. d16 d8 fis | fis4 e | g8. cis,16 cis8 e | e4 d |

        \repeat volta 2 { a'4 a | fis2 | h8 a g fis | e2 | e8 fis g a | h4 h | a8 a a g | fis2 | }
      }
    }
    \new Lyrics \lyricsto "melody" {
      \lyricmode {
        Wy -- je -- chał leś -- ni -- czy z_ra -- na na za -- ją -- ce,
        na -- pot -- kał dziew -- czy -- ne na mo -- ra -- wie śpią -- cą.
        I tak ją ści -- skał ca -- ło -- wał
        i tak ob -- ser -- wo -- wał, by snu
        nie przer -- wał.
      }
    }
  >>
}

\markup {
  \fill-line {
    \null
    \column {
      \line { Wyjechał leśniczy z rana na zające, }
      \line { napotkał dziewczyne na morawie śpiącą.}
      \line { |: I tak ją ściskał całował }
      \line { i tak obserwował, by snu nie przerwał. :| }

      \null

      \line { O panie leśniczy, ja sie pana zlękam, }
      \line { aż mnie sznoruweczka u gorseta pękła. }
      \line { |: Nie bój sie, nic ci nie zrobie. }
      \line { Pozwól tylko dziewcze ku swej osobie. :| }
   }
   \null
   \column {
      \line { Mam ja złote góry, oddam dziewcze tobie, }
      \line { byleś pozwoliła ku swojej osobie. }
      \line { |: Idź pan precz z tymi górami, }
      \line { nie róbże mi wstydu przed rodzicami. :| }

      \null

      \line { Mam złoty pierścionek, oddam dziewcze tobie, }
      \line { byleś pozwoliła ku swojej osobie. }
      \line { |: Wiwat! Hej! Na co mi to to. }
      \line { Mniejszy mój wianeczek niż twoje złoto. :| }
    }
    \null
  }
}
