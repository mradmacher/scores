\version "2.22.1"
\include "deutsch.ly"

melody = \relative c' {
  \clef treble
  \time 2/4
  \key fis \minor
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \mark \markup { \circle { \bold 1 } }
  \repeat volta 2 {
    eis16 fis fis eis eis d d cis | h cis cis gis gis'8.\mordent cis,16 |
    eis16 fis fis eis eis d d cis | h cis cis gis cis4\mordent |
  }

  \key h \major
  \mark \markup { \circle { \bold 2 } }
  \acciaccatura fis,16 ais16 h cis dis  dis e e dis |
  dis e e dis  dis e e dis |
  dis4\mordent dis4\mordent |
  fis16 eis fis dis  dis e e dis | dis4\mordent dis8.\mordent fis,16|
  ais16 h cis dis  dis e e dis | cis dis dis cis  cis cis cis cis |
  cis4\mordent cis4\mordent dis16 e e dis  cis dis dis cis |
  cis4\mordent
  \mark \markup { \italic "D.C." }
  cis4 | \bar "|."

  \key fis \minor
  \break
  \acciaccatura { eis'16 fis } gis2~ | gis2~ | gis2 |
  \break

  \mark \markup { \circle { \bold 3 } }
  eis16 fis gis gis  gis gis gis gis |
  gis fis gis cis,  gis' fis eis d |
  gis fis eis d  cis cis cis cis |
  eis fis gis cis,  gis' ais h cis |
  h ais cis h  a gis fis a |
  gis fis eis d cis4 |

  eis16 fis gis gis  gis gis gis gis |
  gis fis gis cis,  gis' fis eis d |
  gis fis eis d  cis d eis fis |
  gis ais h cis  h ais cis h |
  a gis fis gis  eis d eis fis |
  gis fis eis d  cis4 |
  \break

  \mark \markup { \circle { \bold 4 } }
  \repeat volta 2 {
    eis16 fis fis gis  eis8 eis16 h |
    gis'16 fis eis d  cis8 cis16 h |
    cis16 d eis fis  gis8 gis16 cis, |
    eis16 fis eis d  eis fis gis a |
    h16 a gis fis  eis d eis fis |
    gis16 fis eis d  cis4 |
  }

  \key e \major
  \break
  h2~ | h |
  \break

  \mark \markup { \circle { \bold 5 } }
  \repeat volta 2 {
    a16 gis fis gis  fis eis fis dis |
    e8. dis16 dis h fis' h, |
    a'16 gis fis gis  fis eis fis dis |
    e8. dis16 h fis h fis |
  }
  \break

  h16 fis dis' e  fis h, fis' h, |
  \times 2/3 { a'16 gis fis } gis16 eis fis h, fis' h, |
  h16 fis dis' e  fis h, fis' h, |
  \times 2/3 { a'16 gis fis } gis16 eis fis4 |
  \break

  \repeat volta 2 {
    h16 a a gis  fis gis a fis | e8. dis16  dis h fis' h, |
    h'16 a a gis  fis gis a fis | e8. dis16  h fis h fis |
  }
  \break

  \repeat volta 2 {
    h16 fis e' fis,  cis' fis, e' fis, | dis'8. h16  cis ais h fis |
    h16 fis e' fis,  cis' fis, e' fis, | dis'8. h16  cis ais h8 |
  }
  \break

  \mark \markup { \circle { \bold 6 } }
  \key fis \minor
  eis'16 fis fis gis  eis d d cis | cis h cis d eis fis gis cis, |
  eis16 fis fis gis  eis d d cis | cis h d cis cis gis cis gis |
  eis'16 fis fis gis  eis d d cis | cis h cis d eis fis gis cis, |
  eis16 fis fis gis  eis d d cis | cis h d cis cis4 |
  \break

  \mark \markup { \circle { \bold 7 } }
  eis16 fis fis gis eis8 d16 cis | cis8 cis16 h cis d eis fis |
  gis16 a gis fis  gis8 gis16 cis, |
  eis16 fis fis gis eis8 eis16 h | cis16 d eis fis gis fis gis a |
  gis16 fis eis d cis4 |

  eis16 fis fis gis eis8 eis16 h | gis' fis eis d cis8 cis16 h |
  cis16 d eis fis gis8 gis16 cis, |
  eis16 fis eis d eis fis gis a | h a gis fis eis d eis fis |
  gis16 fis eis d cis4 |
  \bar "|."
  \break

  \mark \markup { \circle { \bold 8 } }
  eis16 fis fis eis eis d d cis | h cis cis gis gis'8.\mordent cis,16 |
  eis16 fis fis eis eis d d cis | h cis cis gis cis4\mordent |
  eis16 fis fis eis eis d d cis | h cis cis gis gis'8.\mordent cis,16 |
  eis16 fis fis eis eis d d cis | cis8 gis cis4 |
  \bar "|."
}

harmonies = \chordmode {
  \germanChords
  \set chordChanges = ##t
  \set chordNameLowercaseMinor = ##t
  cis2 | cis2 | cis2 | cis2 |

  h2 | h2 | h2 | h2 | h2 |
  h2 | h4 fis4 | fis2 | fis2:m | cis4:m cis |

  cis2 | cis2 | cis2 |

  cis2 | cis2 | cis2 | cis2 | cis2 | cis2 |
  cis2 | cis2 | cis2 | cis2 | cis2 | cis2 |

  cis2 | cis2 | cis2 | cis2 | cis2 | cis2 |

  h2 | h2 |

  h2 | h2 | h2 | h2 |

  h2 | h2 | h2 | h2 |

  h2 | h2 | h2 | h2 |

  h2 | h2 | h2 | h2 |

  cis2 | cis2 | cis2 | cis2 | cis2 | cis2 |
  cis2 | cis2 | cis2 | cis2 | cis2 | cis2 |

  cis2 | cis2 | cis2 | cis2 | cis2 | cis2 | cis2 | cis2 |

  cis2 | cis2 | cis2 | cis2 |
  cis2 | cis2 | cis2 | cis2:m |
}

\header {
  title = "Криво женско оро"
  composer = "Македонија"
  tagline = "05.03.2024"
}
\score {
  <<
    \new Staff \transpose h a \melody
    \new ChordNames \transpose h a \harmonies
  >>
}

