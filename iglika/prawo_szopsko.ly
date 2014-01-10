\version "2.16.2"
\include "deutsch.ly"

melody = \relative c'' {
  \time 2/4
  \key fis \minor
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t

  \repeat volta 2 {
    \times 2/3 {
      cis8 cis cis eis fis fis | fis fis fis fis eis fis |
      a8 a fis fis fis d | eis8 eis d d d h |
      cis8 d h cis d fis | eis8 eis d d d h |
      eis8 d d  cis cis cis | cis cis cis cis cis h |
    }
  }
  \break

  \repeat volta 2 {
    \times 2/3 {
      cis8 d d eis eis d | d8 eis eis d d h |
      gis'8 fis fis fis fis eis | d8 eis eis d d h |
      cis d d eis eis d | d8 eis eis d d h |
      eis8 d d cis cis cis |
      cis8 cis cis cis4.^"D.C." |
      \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \mark \markup { "Fine" }
      \bar "||"
    }
  }
  \break

  \repeat volta 2 {
    \times 2/3 {
      gis'8 fis fis eis d d | h8 cis d eis eis h |
      gis'8 fis fis eis d d | h8 cis gis cis cis cis |
      gis'8 fis fis eis d d | h8 cis d eis eis h |
      gis'8 fis fis eis d d | h8 cis gis cis4. |
    }
  }
  \break

  \repeat volta 2 {
    \times 2/3 {
      ais8 h h h' a a | fis8 a gis fis fis dis |
      eis8 fis gis gis fis eis | eis8 d dis fis h, h |
      eis8 fis fis h a a | fis8 a gis fis fis dis |
      eis8 fis gis gis fis eis | eis8 d dis h4. |
    }
  }
  \break

  \repeat volta 2 {
    \times 2/3 {
      eis8 fis gis gis fis fis | dis8 fis h, fis' fis dis |
      eis8 eis eis gis fis fis | eis8 d dis fis h, h |
      eis8 fis gis gis fis fis | dis8 fis h, fis' fis dis |
      eis8 eis eis gis fis fis | eis8 d dis h4. |
    }
  }
  \break

  \repeat volta 2 {
    \times 2/3 {
      gis'8 fis fis eis d d | h8 cis d eis eis h |
      gis'8 fis fis eis d d | h8 cis gis cis cis cis |
      gis'8 fis fis eis d d | h8 cis d eis eis h |
      gis'8 fis fis eis d d | h8 cis gis cis4. |
      \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \once \override Score.RehearsalMark #'self-alignment-X = #right
      \mark \markup { "D.C. al Fine" }
    }
  }
}

harmonies = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t
}

\header { title = "Право шопско" }
\score {
  <<
    \new Staff \transpose fis e \melody
    %\new ChordNames \transpose fis e \harmonies
  >>
}
