\version "2.16.2"
\include "deutsch.ly"

i = \relative c''{
  ais16 h fis' h,   ais h fis' h,   gis a e' a,   gis a e' e, |
  a8 fis16 eis   fis a cis cis,   a'8 fis16 eis   fis cis gis' a |

  ais16 h fis' h,   ais h fis' h,   gis a e' a,   gis a e' e, |
  a8 fis16 eis   fis a cis cis,   a'8 fis16 eis   fis cis fis8 |
}

iChords = \chordmode {
  h2:m a2 |
  cis4 fis4:m cis4 fis4:m |
  h2:m a2 |
  cis4 fis4:m cis4 fis4:m |
}

%******************************************************************************
iiPartI = \relative c'' {
  d8 h16 ais   h cis d eis   fis8 d16 cis   d8 h16 a |
}
iiPartII = \relative c'' {
  gis16 a ais h   a8 fis16 cis'   a8 fis16 eis   fis a cis fis,|
}
iiPartIII = \relative c'' {
  gis16 a h gis   a cis, fis cis   a'8 fis16 eis   fis cis fis8
}
ii = {
  \iiPartI \iiPartII \iiPartI \iiPartIII
}
iiChords = \chordmode {
  h2:m s2 |
  cis4 fis4:m cis4 fis4:m |
  h2:m s2 |
  cis4 fis4:m cis4 fis4:m |
}
%******************************************************************************
iii =  \relative c'' {
  cis16 d eis fis   gis8 gis8   gis16 cis a fis   gis8 gis16 cis, |
  gis'16 a ais h   a8 fis16 gis   fis8 d16 eis   d8 h16 cis |
  d8 h16 a   gis fis eis d   cis d eis fis   gis8 gis16 cis, |
}
iiiVoltaI = \relative c'' {
  eis16 d d h   cis8 gis'   fis8 d   cis16 gis cis gis |
}
iiiVoltaII = \relative c'' {
  gis16 a h cis   d8 h16 gis'   fis8 d   cis4 |
}
iiiChords = \chordmode {
  cis2 s8 fis8:m cis4 |
  cis4 s4 s2 |
  h2:m cis2 |
}
iiiVoltaIChords = \chordmode {
  h4:m cis4 h4:m cis4 |
}
iiiVoltaIIChords = \chordmode {
  cis4 h4:m s4 cis4 |
}
%******************************************************************************
ivPartI = \relative c'' {
  h8 fis'8    dis16 eis fis dis   h8 fis'8   dis16 eis fis dis |
}
ivPartII = \relative c'' {
  h8 fis'8   dis16 eis fis gis   a8 fis   dis16 eis fis dis |
}
iv = {
  \ivPartI \ivPartII \ivPartI
}
ivVoltaI = \relative c'' {
  h8 a'   fis16 h a fis   fis8 d16 dis   dis h fis' dis |
}
ivVoltaII = \relative c'' {
  h8 a'   fis16 h a fis   fis8 d16 dis   h4 |
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
  ais8 h   h, h'16 h,   a'8 fis16 eis   fis h, dis fis |
}
vPartII = \relative c'' {
  ais8 h   fis h   ais16 h d dis   gis8 fis |
}
vPartIII = \relative c'' {
  gis16 eis fis h,   h'16 a gis fis   eis8 d16 dis  h4 |
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
viPartI = \relative c'' {
  e16 dis e a   as g g e   e e his cis   cis a e' a, |
}
viPartII = \relative c'' {
  dis16 e a as   g g e dis   e e his cis   a cis e a, |
}
viPartIII = \relative c'' {
  cis16 d cis d   g g e dis   e e his cis   a cis e a, |
}
viPartIV = \relative c''' {
  gis16 a dis dis   c c a a   as g g e    e e his cis |
  fis16 dis e a,   a' g g e   e e his cis a4 |
}
vi = {
  \viPartI \viPartII
}
viVoltaI = {
  \viPartI \viPartIII
}
viVoltaII = {
  \viPartIV
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
viiPartI = \relative c' {
  fis16 a cis fis   e8 d16 cis   cis16 fis cis fis   e8 d16 cis |
}
viiPartII = \relative c'' {
  cis16 fis cis fis   h a a eis   fis8 fis16 fis,   e' d cis h |
}
vii = {
  \viiPartI \viiPartII \viiPartI
}
viiVoltaI = \relative c'' {
  cis16 d eis fis   gis a h8   a8 fis16 eis   fis cis a cis |
}
viiVoltaII = \relative c'' {
  cis16 ^ "D.S. al Fine e poi al Coda" d h cis   a h gis a   fis cis eis8   fis4 |
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
  cis2. fis4:m |
}
%******************************************************************************

viii = \relative c'' {
  h8 fis'   dis16 eis fis dis   h8 fis'   dis16 eis fis dis
  h8 fis'   dis16 eis fis gis   a8 fis16 eis   fis h, dis fis |
  h8 ais16 h   dis h fis8   fis8 eis16 fis   h fis dis8 |
  dis8 cisis16 dis   fis d h8 ~ h4. ais8 | h4 r4 r2 |
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
  h2 s2 |
}

sziraMelody =  {
  \key fis \minor

  \repeat volta 2 { \i }
  \break

  \repeat volta 2 {
    \ii
    \bar "||"
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \mark "D.S."
  }
  \break

  \repeat volta 2 {
    \iii
  } \alternative {
    { \iiiVoltaI }
    {
      \iiiVoltaII
      \bar "||"
      \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
      \once \override Score.RehearsalMark #'self-alignment-X = #right
      \mark "Fine"
  }
  }
  \break

  \repeat volta 2 {
    \iv
  } \alternative {
    { \ivVoltaI } { \ivVoltaII }
    \bar "||"
  }
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
\header { title = "Шира"}
\score {
  <<
    \new Staff \transpose a g \sziraMelody
    \new ChordNames \transpose a g \sziraChords
  >>
  \layout{}
}
