\version "2.22.1"
\include "deutsch.ly"

band = \relative c' {
  \clef treble
  \key h \minor
  \time 9/8
  \set Timing.beatStructure = #'(2 2 2 3)

  \repeat volta 2 {
    fis16 fis fis e  fis g fis e  e e e h  e8 e16 e e fis |
    d16 d d cis  h cis a cis  h h h fis  h cis d e fis g |

    fis16 fis fis e  a g fis e  e e e h  e8 e16 e e fis |
  }
  \alternative {{
    d16 d d cis  h cis a cis  h h h fis  h fis h8 r8 |
  }{
    d16 d d cis  h cis a cis  h h h fis  h4 r8 |
  }}
}

chordsBand = \chordmode {
  \germanChords

  h2:m e2:m s8 | a2 h2:m s8 |
  h2:m e2:m s8 |
  a2 h2:m s8 |
  a2 h2:m s8 |
}

melody = \relative c' {
  \clef treble
  \key h \minor
  \time 9/8
  \set Timing.beatStructure = #'(2 2 2 3)

  \repeat volta 2 {
    h8 h h' h h h h h4 | a8 g fis e fis g a h4 |
    a8 g fis e d e fis4 e8 | d8 e cis4 h r4. |
  }

  \repeat volta 2 {
    e8 e e e e d fis4 e8 | d8 e cis a h cis d e4 |
    a8 g fis e d e fis4 e8 | d8 e cis4 h r4. |
  }
}

chordsMelody = \chordmode {
  \germanChords

  h2:m g2 s8 | a2 d2 s8 |
  d2 e2:m s8 | fis2 h2:m s8 |
  e4:m s2.. | a2 h2:m s8 |
  e2:m h2:m s8 | fis2 h2:m s8 |
}


\header{
  title = "Не си го продавај Кољо чифликот"
  tagline = "08.11.2023"
}
\score {
  <<
    \new Staff \band
    \new ChordNames \chordsBand
  >>
}
\score {
  <<
    \new Staff \melody
    \new ChordNames \chordsMelody
  >>
}
\markup {
  \column {
    \line { Не си го продавај Кољо чифликот }
    \line { мама не ме дава Кољо за тебе. }
    \line { По меани одиш Кољо, рујно вино пиеш, }
    \line { дома рано не си одиш да спиеш. }

    \null

    \line { Колку ти чини Кољо чифликот, }
    \line { толку ми чини Кољо лицето. }
    \line { По меани одиш Кољо, рујно вино пиеш, }
    \line { дома рано не си одиш да спиеш. }

    \null

    \line { Не си го продавај Кољо трлото, }
    \line { мама не ме дава Кољо за тебе. }
    \line { По меани одиш Кољо, рујно вино пиеш, }
    \line { дома рано не си одиш да спиеш. }

    \null

    \line { Колку ти чини Кољо трлото, }
    \line { толку ми чини Кољо грлото. }
    \line { По меани одиш Кољо, рујно вино пиеш, }
    \line { дома рано не си одиш да спиеш. }
  }

  \column {
    \line { Ne si go prodavaj Koljo chiflikot }
    \line { mama ne me dava Koljo za tebe. }
    \line { Po meani odish Koljo, rujno vino piesh, }
    \line { doma rano ne si odish da spiesh. }

    \null

    \line { Kolku ti chini Koljo chiflikot, }
    \line { tolku mi chini Koljo liceto. }
    \line { Po meani odish Koljo, rujno vino piesh, }
    \line { doma rano ne si odish da spiesh. }

    \null

    \line { Ne si go prodavaj Koljo trloto, }
    \line { mama ne me dava Koljo za tebe. }
    \line { Po meani odish Koljo, rujno vino piesh, }
    \line { doma rano ne si odish da spiesh. }

    \null

    \line { Kolku ti chini Koljo trloto, }
    \line { tolku mi chini Koljo grloto. }
    \line { Po meani odish Koljo, rujno vino piesh, }
    \line { doma rano ne si odish da spiesh. }
  }
}
\markuplist {
  \column {
    \null
    \null

    \line { Don't sell the farm, Koljo, }
    \line { my mother won't give me. }
    \line { Koljo goes to the taverns and drinks rich wine, }
    \line { he doesn't go home early to sleep. }
    \null

    \line { What your farm is worth, }
    \line { Koljo, my face is worth. }
    \null

    \line { Don't sell the pen, Koljo, }
    \line { my mother won't give me. }
    \null

    \line { What your pen is worth, Koljo, }
    \line { my throat is worth. }
  }
}
