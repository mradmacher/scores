\version "2.16.2"
\include "deutsch.ly"
% in B

melody_i = \relative c'' {
  \repeat volta 2 {
    h8
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \mark \markup { \musicglyph #"scripts.segno" }
    c dis e e e4 e e           |
    e8 fis e4 dis4. c8 h a4       |
    h8 c c c dis e4 dis c8 dis    |
    c4 h h4. a4 a                 |
    h8 c c a fis' e e dis4 c8 dis |
    c4 h h4. h4 h                 | \break
  }
}

harmonies_i = \chordmode {
  h2 e4.:m s2 |
  s2 h4. s2   |
  a2:m s4. s2 |
  s2 h4. a2:m |
  s2 s4. s2   |
  s2 h4. s2   |
}

melody_ii = \relative c'' {
  \repeat volta 2 {
    dis8 e e dis c dis4 c8 h c a    |
    dis8 e e dis c dis4 c8 h c a    |
    fis'8 e e dis c c a h c dis dis |
    c8 a h4 h4. h4
    \once \override Score.RehearsalMark #'self-alignment-X = #left
    \mark \markup { \musicglyph #"scripts.coda" }
    h                               | \break
  }
}

harmonies_ii = \chordmode {
  a2:m s4. s2 |
  s2 s4. s2   |
  s2 s4. s2   |
  s2 h4. s2   |
}

melody_iii = \relative c'' {
  \repeat volta 2 {
    dis8 c c a h h fis a a h fis  |
    a8 a h h h a a h h h fis      |
    dis'8 c c a h h fis a a h fis |
    a8 a h h h a a h h h fis      | \break
  }
}

harmonies_iii = \chordmode {
  h2 s4. s2 |
  s2 s4. s2 |
  s2 s4. s2 |
  s2 s4. s2 |
}

melody_iv = \relative c'' {
  \repeat volta 2 {
    a8 a h h a a fis gis a h h     | \noBreak
    h8 fis h dis dis c c h a h fis | \noBreak
    h8 h a gis fis gis a h h h fis | \noBreak
    dis'8 dis c dis c h a h h h4   | \break
  }
}

harmonies_iv = \chordmode {
  h2 s4. s2   |
  s2 s4. s2   |
  s2 s4. s2   |
  s2 a4.:m h2 |
}

melody_v = \relative c'' {
  \repeat volta 2 {
    dis8 dis c dis c h a h c dis e   |
    dis8 dis c dis c h a h h fis' h, |
    dis8 dis c dis c h a h c dis e   |
    dis8 dis c dis c h a h h h4      | \break
  }
}

harmonies_v = \chordmode {
  h2 a4.:m h2 |
  s2 a4.:m h2 |
  s2 a4.:m h2 |
  s2 a4.:m h2 |
}

melody_vi = \relative c'' {
  \repeat volta 2 {
    dis8 e e cis d d cis cis cis e a, |
    dis e e cis d d cis cis a h a     |
    dis8 e e cis d d cis cis cis e a, |
    dis e e cis d d cis cis a h a     | \break
  }
}

harmonies_vi = \chordmode {
  a2 s4. s2 |
  s2 s4. s2 |
  s2 s4. s2 |
  s2 s4. s2 |
}

melody_vii = \relative c'' {
  \repeat volta 2 {
    d4 cis d8 d cis cis cis e a, |
    d4 cis e8 d cis cis a h a    |
    d4 cis d8 d cis cis cis e a, |
    d4 cis e8 d cis cis a h a    | \break
  }
}

harmonies_vii = \chordmode {
  a2 s4. s2 |
  s2 s4. s2 |
  s2 s4. s2 |
  s2 s4. s2 |
}

melody_viii = \relative c' {
  fis8 fis fis fis h h a gis a h h  |
  h8 fis a a h h a gis fis cis' cis |
  fis,8 fis fis fis h h a gis a h h |
  h8 fis a a h h a gis fis fis fis  | \break

  fis8 fis fis fis h h a gis a h h  |
  h8 fis a a h h a gis fis cis' cis |
  fis,8 fis fis fis h h a gis a h c |
  dis8 dis c4 dis8 c h h a h h      | \break
}

harmonies_viii = \chordmode {
  fis2:m s4. s2   |
  s2 s4. s2       |
  s2 s4. s2       |
  s2 s4. s2       |

  fis2:m s4. s2   |
  s2 s4. s2       |
  s2 s4. s2       |
  h2 a4.:m h2     |
}

melody_ix = \relative c'' {
  \repeat volta 2 {
    dis8 dis c4 dis8 c h h a h c   | \noBreak
    dis8 dis c4 dis8 c h h h e fis | \noBreak
    dis8 dis c4 dis8 c h h a h c   | \noBreak
    dis8 dis c4 dis8 c h h a h h   | \break
  }
}

harmonies_ix = \chordmode {
  h2 s4. s2   |
  s2 a4.:m h2 |
  h2 s4. s2   |
  s2 a4.:m h2 |
}

melody_x = \relative c'' {
  \repeat volta 2 {
    eis8 eis d4 eis8 d cis cis h eis fis   | \noBreak
    eis8 eis d4 eis8 d cis cis gis cis cis | \noBreak
    eis8 eis d4 eis8 d cis cis h eis fis   | \noBreak
    eis8 eis d4 eis8 d cis cis gis cis cis | \break
  }
}

harmonies_x = \chordmode {
  cis2 s4. s2   |
  s2 h4.:m cis2 |
  cis2 s4. s2   |
  s2 h4.:m cis2 |
}

\header { title = \markup{ Копаница } }
\score{
  <<
    \new Staff \transpose g f {
      \time 11/8
      \set Timing.beatStructure = #'(2 2 3 2 2)

      \melody_i
      \melody_ii
      \melody_iii
      \melody_iv
      \melody_v
      \melody_vi
      \melody_vii
      \melody_viii
      \melody_ix
      \melody_x
    }
    \new ChordNames \transpose g f {
      \germanChords
      \set chordNameLowercaseMinor = ##t

      \harmonies_i
      \harmonies_ii
      \harmonies_iii
      \harmonies_iv
      \harmonies_v
      \harmonies_vi
      \harmonies_vii
      \harmonies_viii
      \harmonies_ix
      \harmonies_x
    }
  >>
}

