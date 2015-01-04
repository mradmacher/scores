\version "2.16.2"
\include "deutsch.ly"

iI = \relative c'' {
  cis8 h a  a h  gis e |
  fis4 e8  fis gis  a  h |
  cis8 h a  a h  gis e |
  fis4.~ fis2 |
}
iIChords = \chordmode {
  a4. e2 |
  h4. s2 |
  a4. e2 |
  h4. s2 |
}

i = \relative c'' {
  a4 h8  a8( h) a( gis) |
  a4 h8  a8( h) a( gis) |
  a4.(~ a4  e) |
  a4( h8) cis2~ |
  cis4.~ cis2 |

  h4 h8   h4   a8( gis) |
  a4.(~  a8 h  gis e |
  fis4.~ fis2~ |
  fis4.~ fis2) |
}


ii = \relative c'' {
  h4 h8  h( cis)  h4 |
}

iii = \relative c'' {
  h4 a8  a( gis)  fis( e) |
  fis4.(~ fis4 e) |
  fis4( gis8)  a2 |
  a4 gis8  fis( gis)  e( fis) |
  fis4.~ fis2~ |
  fis4.~ fis2 |
}

iv = \relative c'' {
  h4 h8  e( d) cis( h) |
}

vI = {
  \i
  \ii
  \iii
  \iv
  \iii
}

vIChords = \chordmode {
  a4. s2 |
  s4. s2 |
  s4. s2 |
  s4. s2 |
  s4. s2 |

  h4. s2 |
  fis4.:m s2 |
  h4. s2 |
  s4. s2 |

  e4. s2 |
  h4. s2 |
  s4. s2 |
  s4. a2:m |
  s4. fis2 |
  h4. s2 |
  s4. s2 |

  e4. a2 |
  h4. s2 |
  s4. s2 |
  s4. a2:m |
  s4. fis2 |
  h4. s2 |
  s4. s2 |
}

otvoriInstrumental = {
  \clef treble
  \key a \major
  \time 7/8
  \set Timing.beatStructure = #'(3 2 2)

  \repeat volta 2 { \iI }
}
otvoriInstrumentalChords = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \iIChords
}

otvoriVocal = {
  \clef treble
  \key a \major
  \time 7/8

  \vI \bar "||"
}
otvoriVocalChords = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \vIChords
}
otvoriChords = {

}

\header {
  title = "Otvori mi belo Lenče"
  composer = Serbia
}

\score {
  <<
    \new Staff \transpose a f \otvoriInstrumental
    \new ChordNames \transpose a f \otvoriInstrumentalChords
  >>
}

\score {
  <<
    \new Staff \transpose a f \otvoriVocal
    \new ChordNames \transpose a f \otvoriVocalChords
  >>
}
