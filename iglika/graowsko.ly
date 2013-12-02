\version "2.16.2"
\include "deutsch.ly"

melody_i = \relative c'' {
  \repeat volta 2 {
    cis16 cis e d   e d cis cis   cis g b b   cis cis cis e,  |
    a16 cis b b   a e g g   a b b a   a g g e               |
    cis'16 cis e d   e d cis cis   cis g b b   cis cis cis e, |
    a16 cis b b   a e g g   a b b g   a4                    | \break
  }
}

harmonies_i = \chordmode {
  a2 g4:m a4 | g2:m a2 |
  a2 g4:m a4 | g2:m a2 |
}
melody_ii = \relative c'' {
  \repeat volta 2 {
    a16 cis b b   a cis b b   a e g g   a a a e |
    a16 cis b b   a e g g   a b b a   a g g e   |
    a16 cis b b   a cis b b   a e g g   a a a e |
    a16 cis b b   a e g g   a g a g   a4        | \break
  }
}
harmonies_ii = \chordmode {
  g2:m a2 | g2:m a2 |
  g2:m a2 | g2:m a2 |
}

melody_iii = \relative c'' {
  a'16 a d,8   e e e e   e16 e d8                        | \noBreak
  e16 f d8   e16 d d8   d d   d16 d cis8                 | \noBreak
  d16 d e d   e e d d   cis8 cis   cis16 cis b8          | \noBreak
  cis16 d b8   cis16 b b8   b b   b16 b b a              | \break
  g8 b16 b   \times 2/3 { cis8 d d }   d8 d   d16 d cis8 | \noBreak
  d16 d e d   e e d d   cis8 cis  cis16 cis b8           | \noBreak
  cis16 d b8   cis16 b b8   b8 b  b16 b b a              | \noBreak
  a16 cis b b   a e g g   a g a g   a4                   | \break
}
harmonies_iii = \chordmode {
  a1 | d1:m | g2:m a2 | g2:m d2 |
  g1:m | g2:m a2 | g1:m | a1 |
}

melody_iv = \relative c'' {
  \repeat volta 2 {
    \times 2/3 { cis8 d d }   b b   b b   b16 b b a | \noBreak
    \times 2/3 { g8 g' f }  \times 2/3 { g8 f f }
    \times 2/3 { d8 e d } \times 2/3 { e8 d d } | \noBreak
    \times 2/3 { cis8 d d }  b8 b   b b   b16 b b a | \noBreak
    a16 cis b b   a e g g   a g a g   a4 | \break
  }
}
harmonies_iv = \chordmode {
  g1:m |
  g1:m |
  g1:m |
  a1 |
}

melody_v = \relative c'' {
  \repeat volta 2 {
    a,16 cis e a   d cis b b   a cis b b   a g g e |
    a16 e g g   a b b b   a g g e   a a a e |
    a16 a, cis e  d' cis b b   a cis b b   a g g e |
    a16 e g g   a b b b   a g g e   a4 | \break
  }
}
harmonies_v = \chordmode {
  a2 g4:m a4 | g2:m a2 |
  a2 g4:m a4 | g2:m a2 |
}

melody_vi = \relative c'' {
  \repeat volta 2 {
    h16 dis c c   h fis a a   h c c a   h h h fis |
    fis'16 e e fis,   c' fis, dis' dis   dis c c a   h h h fis |
    h16 dis c c   h fis a a   h c c a   h h h fis |
    fis'16 e e fis,   c' fis, dis' dis   dis c c a   h4 | \break
  }
}
harmonies_vi = \chordmode {
  h2 a4:m h4 | h2 a4:m h4 |
  h2 a4:m h4 | h2 a4:m h4 |
}

melody_vii_volta = {
  \times 2/3 {
    dis8 c c   a h c  dis c c   h fis h |
    dis8 c c  a c fis,  h h h   a a fis |
    dis'8 c c   a h c  dis c c   h fis h |
  }
}
melody_vii = \relative c'' {
  \repeat volta 2 {
    \melody_vii_volta
  }
  \alternative { {
      \times 2/3 {
        dis8 c c  a c fis,  h h fis   h h fis  |
      }
    } {
      \times 2/3 {
        dis'8 c c  a c fis,  h h fis   h4 s8  | \break
      }
    }
  }
}
melody_vii_a = \relative c'' {
  \repeat volta 2 {
    \melody_vii_volta
  }
  \alternative { {
      \times 2/3 {
        dis8 c c  a c fis,  h h fis   h h fis  |
      }
    } {
      \times 2/3 {
        dis'8 c c    a h c   h4 s8   h4 s8 |
      }
    }
  }
}
harmonies_vii = \chordmode {
  h1 | h4 a4:m h2 | h1 |
  h4 a4:m h2 |
  h4 a4:m h2 |
}

melody_viii = \relative c' {
  \repeat volta 2 {
    \times 2/3 {
      fis8 h h   h4 h8   dis c a   h h h |
      fis8 a a  a fis a   a a g   g g e |
      e8 g g  g4 g8  e fis g  a a a |
    }
  }
  \alternative { {
      \times 2/3 {
        e8 fis fis  e dis e   fis e dis   dis c h |
      }
    } {
      \times 2/3 {
        e8 fis fis  e dis e   fis fis h,  fis'4 s8 | \break
      }
    }
  }
}
harmonies_viii = \chordmode {
  h1 | h2. e4:m | h2. a4:m |
  a2:m h2 |
  a2:m h2 |
}

melody_ix = \relative c'' {
  \repeat volta 2 {
    \times 2/3 {
      h,8 a' a    a4 a8   a a g   g g e |
      e8 g g    g4 g8   fis fis e   e e c |
      h8 c a    h h h   a h c   dis e fis |
    }
  }
  \alternative { {
      \times 2/3 {
        g8 g e    e e c   h h h   fis' h, dis |
      }
    } {
      \times 2/3 {
        g8 g e    e e c     h h fis'    h,4 s8 | \break
      }
    }
  }
}
harmonies_ix = \chordmode {
  h2. e4:m | e2:m a2:m | h2 a2:m |
  a2:m h2 |
  a2:m h2 |
}

melody_x = \relative c'' {
  \repeat volta 2 {
    \times 2/3 {
      dis8 c c    dis e, c'   c c a   h h fis |
      fis'8 e e   fis fis, e'   e e c   dis dis fis, |
      dis'8 c c    dis e, c'   c c a   h h h |
    }
  }
  \alternative { {
      \times 2/3 {
        a8 c c    c c a   h h fis   h fis h |
      }
    } {
      \times 2/3 {
        a8 c c    c c a   h h fis   h4 s8 | \break
      }
    }
  }
}
harmonies_x = \chordmode {
  h2 a4:m h4 | a2.:m h4 | h2 a4:m h4 |
  a2:m h2 |
  a2:m h2 |
}

melody_xi = \relative c'' {
  \repeat volta 2 {
    \times 2/3 {
      dis8 c fis,   h h h   dis c fis,   h h h | \noBreak
      dis8 c fis,    a h h   h gis a   h fis h | \noBreak
      dis8 c fis,   h h h   dis c fis,   h h h | \noBreak
      dis8 c fis,    a h h   h gis a   h4 s8 | \break
    }
  }
}
harmonies_xi = \chordmode {
  h1 |
  h4 a2:m h4 |
  h1 |
  h4 a2:m h4 |
}

melody_xii = \relative c' {
  \repeat volta 2 {
    \times 2/3 {
      a8 a a   g' g e    fis fis d   e e a, |
      fis'8 fis a,    g' g e    fis fis d   e8 e a, |
      a8 a a   g' g e    fis fis d   e e a, |
      fis'8 fis a,    g' g e    fis fis d   e4 s8 | \break
    }
  }
}
harmonies_xii = \chordmode {
  a1 | a1 |
  a1 | a1 |
}

melody_xiii = \relative c' {
  \repeat volta 2 {
    \times 2/3 {
      fis8 fis a,    g' g e    fis fis a,    g' g e |
      fis fis a,    g' g e    fis fis d   e e a, |
      fis'8 fis a,    g' g e    fis fis a,    g' g e |
      fis fis a,    g' g e    fis fis d   e4 s8 | \break
    }
  }
}
harmonies_xiii = \chordmode {
  a1 | a1 | a1 | s1 |
}

melody = {
  \melody_i
  \melody_ii
  \melody_iii
  \melody_iv
  \melody_ii
  \melody_v
  \melody_vi

  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \override TupletNumber #'transparent = ##t

  \melody_vii
  \melody_viii
  \melody_ix
  \melody_x

  \melody_xi
  \melody_xii

  \melody_xiii
  \melody_vii_a
}

harmonies = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \harmonies_i
  \harmonies_ii
  \harmonies_iii
  \harmonies_iv
  \harmonies_ii
  \harmonies_v
  \harmonies_vi
  \harmonies_vii
  \harmonies_viii
  \harmonies_ix
  \harmonies_x
  \harmonies_xi
  \harmonies_xii
  \harmonies_xiii
  \harmonies_vii
}

\header { title = "Граовско" }
\score {
 <<
    \new Staff \transpose f b \melody
    \new ChordNames \transpose f b \harmonies
 >>
}
