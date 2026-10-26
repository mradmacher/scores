\bookpart {
  \header {
    title = "Pobiły mie, Parkoszanie!"
    composer = ""
    tagline = ##f
  }

  \score {
    <<
      \new Voice = "melody" {
        \relative c' {
          \key d \major
          \time 2/4
          \autoBeamOff

          a8 d4 cis8 | d4 r4 | fis8 a4 gis8 | a4 r4 |
          \repeat volta 2 { a8 e4 fis8 | g8 fis e4 | a8 e4 d8 | cis8 h a4 | fis'8 fis4 e8 | d4 r4 }
        }
      }
      \new Lyrics \lyricsto "melody" {
        \lyricmode {
          Po -- bi -- ły mie, Par -- ko -- sza -- nie!
          Przy gó -- rze w~do -- ly -- nie
          przy ład -- ny dziew -- cy -- nie
          po -- bi -- ły mie.
        }
      }
    >>
  }

  \markup {
    \vspace #5
    \fill-line {
      \null
      \column {
        \line { Pobiły mie, Parkoszanie! }
        \line { |: Przy górze w dolynie }
        \line { przy ładny dziewcynie }
        \line { pobiły mie. :| }
      }
      \null
    }
  }
}


