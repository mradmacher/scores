\version "2.22.1"
\include "deutsch.ly"

band = \relative c'' {
  \clef treble
  \key c \minor
  \time 9/8
  \set Timing.beatStructure = #'(2 2 2 3)

  \repeat volta 2 {
    g4 g f8 es f es4 | g4 g f8 es f es4 |
    g4 g as g f8 | as4 as g8 f es d es |
    f4 f es8 d es d4 | f4 f es8 d es d4 |
  }
  \alternative {{
    d4 es f g as8 | as4 g2 r4. |
  }{
    d4 es f es d8 | d4 c2 r4. | \bar "|."
  }}
  r4 r4 r4 r4. | r4 r4 r4 r4. |
}

chordsBand = \chordmode {
  c4:m s2.. | c4:m s2.. |
  c4:m s2.. | f4:m s2.. |
  b4 s2.. | b4 s2.. |

  g4 s2.. | c4:m s2.. |
  g4 s2.. | c4:m s2.. |
  s2 s4 s4. | s2 s4 s4. |
}

melody = \relative c' {
  \clef treble
  \key c \minor
  \time 9/8
  \set Timing.beatStructure = #'(2 2 2 3)

  \repeat volta 2 {
    f8 g g g f es f es4 | f8 g g g f es f es4 |
    f8 g g g as4 g f8 | as4 as g8 f f es d |
    es8 f f f es d es d4 | es8 f f f es d es d4 |
  }
  \alternative {{
    es8 f f g as4 f4. | as4 g f8 es es d c |
  }{
    es8 d d d d4 es4. | d4 c2 r4. | \bar "|."
  }}
  \break

  \magnifyMusic 0.90 {
    d'8 c c es d es es f4 | g8 as g as g f es d c |
  }
  \break

  as8 as as as g f g f4 | f8 f f f es d es d4 |
  es8 f f g as4 b4. | as4 g2 r4. |
  \break
  as8 as as as g f g f4 | f8 f f f es d es d4 |
  es8 d d d d4 es4. | d4 c2 r4. | \bar "|."
}

chordsMelody = \chordmode {
  c4:m s2.. | c4:m s2.. |
  c4:m s2.. | f4:m s2.. |
  b4 s2.. | b4 s2.. |

  g4 s2.. | c4:m s2.. |
  g4 s2.. | c4:m s2.. |

  c4:m s2.. | g4 s2.. |

  f4:m s2.. | b4 s2.. |
  b4 s2.. | es4 s2.. |
  f4:m s2.. | b4 s2.. |
  g4 s2.. | c4:m s2.. |
}

coda = \relative c' {
  \clef treble
  \key c \minor
  \time 9/8
  \set Timing.beatStructure = #'(2 2 2 3)
  \mark \markup { "Coda" }
  es8 d d d d4 es4. | d4 c2 r4. |
  \magnifyMusic 0.90 {
    d'8 c c es d es es f4 | g8 as g as g f es d c | c4 r4 r4 r4. | \bar "|."
  }
}
codaChords = \chordmode {
  g4 s2.. | c4:m s2.. |
  c4:m s2.. | g4 s2.. | c4:m s2.. |
}

\header{
  title = "Бяла роза"
  tagline = "16.01.2024"
}
\score {
  <<
    \new Staff \band
    \new ChordNames {
      \set chordNameLowercaseMinor = ##t
      \set chordChanges = ##t
      \germanChords
      \chordsBand
    }
  >>
}
\score {
  <<
    \new Staff \melody
    \new ChordNames {
      \set chordNameLowercaseMinor = ##t
      \set chordChanges = ##t
      \germanChords
      \chordsMelody
    }
  >>
}
\score {
  <<
    \new Staff \coda
    \new ChordNames {
      \set chordNameLowercaseMinor = ##t
      \set chordChanges = ##t
      \germanChords
      \codaChords
    }
  >>
}


\markup {
  \column {
    \line { Бяла роза със росата }
    \line { ще закича във косата }
    \line { да посрещна аз зората, }
    \line { бързо слънце да изгрее, }
    \line { да изгрее, да залезе, }
    \line { че да ида на чешмата. }

    \null

    \line { Бяла роза ще закича, }
    \line { бяла роза със бодлите, }
    \line { но пази се ти, пази се! }
  }

  \column {
    \line { Снощи вечер на чешмата }
    \line { срещнах момък във позлата, }
    \line { с черни о̀чи кат маслини, }
    \line { яхна черно врано конче, }
    \line { чудни думи той ми рече, }
    \line { във любов ми се обрече. }

    \null

    \line { Бяла роза ще закича, }
    \line { бяла роза със бодлите, }
    \line { но пази се ти, пази се! }
  }

  \column {
    \line { Вече съм мома голяма – }
    \line { много лесно се не давам; }
    \line { дали туй не е измама? }
    \line { Малко хитро ще опитам, }
    \line { този момък ще изпитам }
    \line { с бяла роза във косата. }

    \null

    \line { Бяла роза ще закича, }
    \line { бяла роза със бодлите, }
    \line { но пази се ти, пази се! }

    \null

    \line{ Но пази се ти, пази се! }
  }
}
