\version "2.16.2"
\include "deutsch.ly"

i = \relative c''{
  \repeat volta 2 {
    ais16 h fis' h,   ais h fis' h,   gis a e' a,   gis a e' e, |
    a16 gis fis eis   fis a cis cis,   a' gis fis eis   fis cis gis' a |

    ais16 h fis' h,   ais h fis' h,   gis a e' a,   gis a e' e, |
    a16 gis fis eis   fis a cis cis,   a' gis fis16 eis   fis cis fis8 |
  }
}

iChords = \chordmode {
  h2:m a2 |
  cis4 fis4:m cis4 fis4:m |
  h2:m a2 |
  cis4 fis4:m cis4 fis4:m |
}

%******************************************************************************
ii = \relative c'' {
  \repeat volta 2 {
    d16 cis h ais   h cis d eis   fis eis d cis   d cis h16 a |
    gis16 a ais h   a gis fis16 cis'   a gis fis16 eis   fis a cis fis,|

    d'16 cis h ais   h cis d eis   fis eis d cis   d cis h16 a |
    gis16 a h gis   a cis, fis cis   a' gis fis eis   fis cis fis8

    \bar "||"
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \mark "D.S."
  }
}
iiChords = \chordmode {
  h2:m s2 |
  cis4 fis4:m cis4 fis4:m |
  h2:m s2 |
  cis4 fis4:m cis4 fis4:m |
}

%******************************************************************************
iii = \relative c'' {
  \repeat volta 2 {
    cis16 d eis fis   gis8 gis16 gis   gis16 cis a fis   gis gis gis cis, |
    gis'16 a ais h   a gis fis gis   fis eis d16 eis   d cis h16 cis |
    d cis h16 a   gis fis eis d   cis d eis fis   gis gis gis16 cis, |
  }
  \alternative {
    { eis'16 d d h   cis cis gis' gis,  eis'16 d d h  cis16 cis cis gis | }
    { gis16 a h cis   d cis h16 gis'  fis eis d h  cis4 | }
    \bar "||"
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \mark "Fine"
  }
}

iiiChords = \chordmode {
  cis2 s8 fis8:m cis4 |
  cis4 s4 s2 |
  h2:m cis2 |

  h4:m cis4 h4:m cis4 |

  cis4 h4:m s4 cis4 |
}

iiiBreaks = {
  \startStaff
  g4 r8 g8~g8 g g g | g4 r4 r2

  \stopStaff
  s1 s1 s1
}
%******************************************************************************
iv = \relative c'' {
  h8 fis'8\prall    dis16 eis fis dis   h8 fis'8\prall   dis16 eis fis dis |
  h8 fis'8\prall   dis16 eis fis gis   a8\prall fis\prall   dis16 eis fis dis |
  h8 fis'8\prall    dis16 eis fis dis   h8 fis'8\prall   dis16 eis fis dis |
}
ivVoltaI = \relative c'' {
  h8 a'\prall   fis16 h a fis   eis fis d dis   dis h fis' dis |
}
ivVoltaII = \relative c'' {
  h8 a'\prall   fis16 h a fis   eis fis d16 dis   h4 |
}
ivChords = \chordmode {
  h4 s4 s2 |
  s1 |
  s1 |
}
ivVoltaIChords = \chordmode {
  s1 |
}
ivVoltaIIChords = \chordmode {
  s1 |
}
%******************************************************************************
vPartI = \relative c'' {
  ais8 h   h, h'16 h,   a'8\prall fis16 eis   fis h, dis fis |
}
vPartII = \relative c'' {
  ais8 h   fis h   ais16 h d dis   gis8\prall fis |
}
vPartIII = \relative c'' {
  gis16 eis fis h,   h'16 a gis fis   eis eis d dis  h4 |
}
v = {
  \vPartI \vPartII \vPartI \vPartIII
}

vChords = \chordmode {
  h4 s4 s2 |
  s1 |
  s1 |
  s1 |
}
%******************************************************************************

vi = \relative c'' {
  e16 dis e a   as as g fis   e e his cis   cis a e' a, |
  dis16 e a as   g fis e dis   e e his cis   a cis e a, |
}
viVoltaI = \relative c'' {
  e16 dis e a   as as g fis   e e his cis   cis a e' a, |
  cis16 d cis d   g g e dis   e e his cis   a cis e a, |
}
viVoltaII = \relative c''' {
  gis16 a dis dis   c c a a   as as g e    e e his cis |
  fis16 dis e a,   a' g g e   e e his cis a4 |
}
viChords = \chordmode {
  a2 s2 |
  s1 |
}
viVoltaIChords = \chordmode {
  s1 |
  s1 |
}
viVoltaIIChords = \chordmode {
  s1 |
  s1 |
}
%******************************************************************************
vii = \relative c' {
  fis16 a cis fis   e8\prall d16 cis   cis16 fis cis fis   e8\prall d16 cis |
  cis16 fis cis fis   h a a eis   fis fis fis fis,   e' d cis h |
  fis16 a cis fis   e8\prall d16 cis   cis16 fis cis fis   e8\prall d16 cis |
}
viiVoltaI = \relative c'' {
  cis16 d eis fis   gis a h8\prall   a16 a fis eis   fis cis a cis |
}
viiVoltaII = \relative c'' {
  cis16 ^ "D.S. al Fine e poi al Coda" d h cis   a h gis a   fis cis eis eis   fis4 |
}
viiChords = \chordmode {
  fis2:m s2 |
  s1 |
  s1 |
}
viiVoltaIChords = \chordmode {
  cis2 fis2:m |
}
viiVoltaIIChords = \chordmode {
  cis2 fis2:m |
}
%******************************************************************************

viii = \relative c'' {
  h8 fis'\prall   dis16 eis fis dis   h8 fis'\prall   dis16 eis fis dis
  h8 fis'\prall   dis16 eis fis gis   a8\prall fis16 eis   fis h, dis fis |
  h8\prall ais16 h   dis h fis8   fis8\prall eis16 fis   h fis dis8 |
  dis8\prall cisis16 dis   fis d h8 ~ h4. ais8 | h4 r4 |
}
viiiChords = \chordmode {
  h2 s2 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  s1 |
  h2.. fis8 |
  h2 |
}

sziraMelody =  {
  \key fis \minor
  \time 2/4

  \i \break

  \ii \break

  \iii \break

  \repeat volta 2 {
    \iv
  }
  \alternative {
    { \ivVoltaI } { \ivVoltaII }
  }
  \bar "||"
  \break

  \repeat volta 2 {
    \v
  }
  \break

  \repeat volta 2 {
    \vi
  } \alternative {
    { \viVoltaI } { \viVoltaII }
  }
  \break

  \repeat volta 2 {
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \vii
  } \alternative {
    { \viiVoltaI }
    {
      \viiVoltaII
      \bar "||"
    }
  }
  \break

  %\once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \once \override Score.RehearsalMark #'self-alignment-X = #left
  \mark  "Coda"
  \iv \ivVoltaI
  \viii
  \break

}

sziraChords = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \iChords
  \iiChords
  \iiiChords \iiiVoltaIChords \iiiVoltaIIChords
  \ivChords \ivVoltaIChords \ivVoltaIIChords
  \vChords
  \viChords \viVoltaIChords \viVoltaIIChords
  \viiChords \viiVoltaIChords \viiVoltaIIChords
  \viiiChords
}

sziraRhythm = {
  \stopStaff
  s1 s1 s1 s1
  s1 s1 s1 s1

  \startStaff
  g4 r8 g8~g8 g g g | g4 r4 r2

  \stopStaff
  s1 s1 s1

  \startStaff
  g4 r4 g4 r4 | g4 r4 g4 r4 | g4 r4 g4 r4 | g4 r4 r8 g8 g4 |
                                            g8 g g g r8 g8 g4 |

  g8 g4 g8 g4 g4 | g8 g4 g8~g g g g |
  g8 g4 g8 g4 g4 | g8 g4 r8 r g g4 |
}

\header {
  title = "Шира"
  tagline = "09.09.2025"
}
\score {
%  <<
%    \new Staff \transpose a g \sziraMelody
%    \new ChordNames \transpose a g \sziraChords
%    \new RhythmicStaff \with {
%      \remove "Time_signature_engraver"
%      %\remove "Bar_engraver"
%      fontSize = #-2
%      \override StaffSymbol #'staff-space = #(magstep -2)
%      firstClef = ##f
%      createSpacing = ##f
%    } \sziraRhythm
%  >>

  <<
    \new Staff \transpose a g {
      \key fis \minor
      \time 2/4
      \i \break \ii \break
    }
    \new ChordNames \transpose a g {
      \iChords \iiChords
    }
  >>
}
\score {
  <<
    \new Staff \transpose a g { \iii \break }
    \new ChordNames \transpose a g \iiiChords
    \new RhythmicStaff \iiiBreaks
  >>
}
