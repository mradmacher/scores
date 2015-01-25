\version "2.16.2"
\include "deutsch.ly"


A = \relative c' {
  \repeat volta 2 {
    e8 a a a | \noBreak
    c4 h | \noBreak
    g e | \noBreak
    e8 a a a | \noBreak
    c4 h | \noBreak
    a2 | \noBreak
    a2 | \noBreak
    f8 f f g | \noBreak
    a4 g | \noBreak
    e c | \noBreak
    c8 d d e | \noBreak
    c4 b | \noBreak
    a2 | \noBreak
    a2 |
  }
}

AChords = \chordmode {
  a2:m | s2 | s2 |
  s2 | s2 | s2 | s2 |
  d2:m | s2 | a2:m |
  d2:m | s2 | a2:m | s2 |
}

B = \relative c'' {
  \repeat volta 2 {
    \acciaccatura h8 c4 a4 | \acciaccatura a8 h4 g4 |
    \times 2/3 { f8 e f a g f | e4 f8 g4 a8 } |
    \acciaccatura h8 c4 a4 | \acciaccatura a8 h4 g4 |
    \times 2/3 { f8 e f a g f } | \times 2/3 { e4 h8 } e4 |
  }
}

BChords = \chordmode {
  a2:m | e2:m | d2:m | e2:m |
  a2:m | e2:m | d2:m | e2:m |
}

C = \relative c' {
  \times 2/3 { f8 e f a g f } | \times 2/3 { e4 h8 } e4 |
  \acciaccatura e8 f4 \acciaccatura e8 f4 | e4 \times 2/3 { h'8 a g } |
  \times 2/3 { f8 e f a g f } | \times 2/3 { e4 h8 } e4 |
  \acciaccatura e8 f4 \acciaccatura e8 f4 | \times 2/3 { h8 a g  a g f } | \bar "||"
}

CChords = \chordmode {
  d2:m | e2:m | d2:m | e2:m |
  d2:m | e2:m | d2:m | e2:m |
}

D = \relative c'' {
  \repeat volta 2 {
    \acciaccatura e8 f4 \acciaccatura e8 f4 | \times 2/3 { g8 g f e e d } |
    e4 \times 2/3 { e8 e d } | \times 2/3 { d8 d c h h a } | d4 \times 2/3 { e8 e d } |
    \times 2/3 { c8 c b b b a } |
  }
  \alternative { {
    a4~ \times 2/3 { a4 g8 } | \times 2/3 { a4 h8 c4 d8 } |
  } {
    a2 | \times 2/3 { c8 h a h a g }
  } }
}

DChords = \chordmode {
  d2:m | s2 | s2 |
  s2 | s2 | d2:m |
  a2:m | s2 |
  a2:m | s2 |
}

E = \relative c'' {
  \times 2/3 { e8 d cis cis h a } | \times 2/3 { a8 a e } a4 |
  \times 2/3 { a8 h4 h4 d8 | cis8 h a a h cis } |
  \times 2/3 { e8 d cis cis h a } | \times 2/3 { a8 a e } a4 |
  \times 2/3 { a8 h4 h4 d8 } | \times 2/3 { cis8 h a } a4 | \break

  \times 2/3 { a8 h4 h4 d8 | cis8 h a a h cis } | e4 \times 2/3 { d4 e8 } | \times 2/3 { cis8 h a } a4 |
  \times 2/3 { a8 h4 h4 d8 | cis8 h a a h cis } | e4 \times 2/3 { d4 e8 } | \times 2/3 { cis8 h a } a4 | \bar "||"
}

EChords = \chordmode {
  a2 | s2 | e2 | a2 |
  a2 | s2 | e2 | a2 |

  e2 | a2 | e2 | a2 |
  e2 | a2 | e2 | a2 |
}

F = \relative c'' {
  d4 d | \times 2/3 { h8 a g } g4 | \times 2/3 { g8 a4 a4 c8 } | \times 2/3 { h8 a g } d'4 |
  d4 d | \times 2/3 { h8 a g } g4 | \times 2/3 { g8 a4 a4 c8 } | \times 2/3 { h8 a g } g4 | \break

  h4 \times 2/3 { c4 h8 } | \times 2/3 { h8 a g } d'4 | d4 d | \times 2/3 { h8 a g } g4 |
  h4 \times 2/3 { c4 h8 } | \times 2/3 { h8 a g } d'4 | d4 d | \times 2/3 { h8 a g } g4 |
}

FChords = \chordmode {
  g2 | s2 | d2 | g2 |
  g2 | s2 | d2 | g2 |

  g2 | s2 | d2 | g2 |
  g2 | s2 | d2 | g2 |
}

G = \relative c' {
  \repeat volta 2 {
    \times 2/3 { e4 fis8 gis4 fis8 | gis8 a4 gis4 gis8 | e4 fis8 gis4 fis8 | fis4 e8 dis4 h8 } |
    \times 2/3 { e4 fis8 gis4 fis8 | gis8 a4 gis4 gis8 | fis4 gis8 gis8 fis e | fis4 h,8 } fis'4 |
  }
}

GChords = \chordmode {
  e2 | s2 | s2 | h2 |
  e2 | s2 | s2 | h2 |
}

melody = {
  \clef treble
  \key a \minor
  \time 2/4

  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  %\override TupletNumber #'transparent = ##t
  %\override TupletBracket #'bracket-visibility = ##f

  \B \break
  \A \break
  \B \break
  \C \break
  \A \break
  \D \break

  \key h \minor
  \transpose a h \A \break

  \key a \major
  \E \break
  \key e \major
  \transpose a e \E \break

  \key a \minor
  \A \break

  \key g \major
  \F \break
  \key a \major
  \transpose g a \F \break
  \key e \major
  \G \break

  \key a \major
  \E \break
  \key e \major
  \transpose a e \E \break
}

harmonies = {
  \germanChords
  \set chordNameLowercaseMinor = ##t

  \BChords
  \AChords
  \BChords
  \CChords
  \AChords
  \DChords
  \transpose a h \AChords
  \EChords
  \transpose a e \EChords
  \AChords
  \FChords
  \transpose g a \FChords
  \GChords

  \EChords
  \transpose a e \EChords
}

\header {
  title = "Завило се вито хоро"
  composer = "Bułgaria"
}
\score {
 <<
    \new Staff \melody
    \new ChordNames \harmonies
 >>
}
