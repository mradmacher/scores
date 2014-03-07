\version "2.12.2"
\include "deutsch.ly"

czestaKrywicaMelodyI = \relative c'' {
  d4 e8 d d e d16 c h g | \noBreak
  a4 c8 h h a16 g  g a h c | \noBreak

  d4 e8 d d e d16 c h g | \noBreak
  a4 c8 h h a16 g g4 |
}
czestaKrywicaChordsI = \chordmode {
  g1 |
  d2 g |
  g1 |
  d2 g |
}

czestaKrywicaMelodyII = \relative c' {
 fis16 g a a a8 a  g16 a h h h8 h | \noBreak
 a8. h16  c8 c h a16 g  g8 d' | \noBreak

 fis,16 g a a a8 a  g16 a h h h8 h | \noBreak
 a8. h16  c8 c h a16 g g4 |
}
czestaKrywicaChordsII = \chordmode {
  d2 g |
  d2 g |
  d2 g |
  d2 g |
}

czestaKrywicaMelodyIII = \relative c'' {
  a8 c16 h  h g a8  a8 c16 h  h g a8 | \noBreak
  a8 c16 h  h g a8  a16 g fis e fis g a8 | \noBreak

  a8 c16 h  h g a8  a8 c16 h  h g a8 | \noBreak
  a8 c16 h  h g a8  a8 d  a16 a a8 |
}
czestaKrywicaChordsIII = \chordmode {
  a1:m |
  a1:m |
  a1:m |
  a1:m |
}

czestaKrywicaMelodyIV = \relative c'' {
  g8 c16 h  h8 as16 g g8 c16 h  h8 as16 g | \noBreak
  g8 c16 h  h8 as16 g   g f g d' g, g  g8 | \noBreak

  g8 c16 h  h8 as16 g g8 c16 h  h8 as16 g | \noBreak
  g8 c16 h  h8 as16 g   g8 d' g,16 g g8 |
}
czestaKrywicaChordsIV = \chordmode {
  g1 |
  g1 |
  g1 |
  g1 |
}

czestaKrywicaMelodyV = \relative c'' {
  g16 a h c  d8 e  d d  g4 | \noBreak
  fis8 e  d16 e d c  h c h a  h c d8 | \noBreak

  g,16 a h c  d8 e  d d  g4 | \noBreak
  fis8 e  d16 e d c  h c h a  g4 |
}
czestaKrywicaChordsV = \chordmode {
  g1 |
  d2 g |
  g1 |
  d2 g |
}

czestaKrywicaMelodyVI = \relative c'' {
  a8 a d, d h' h g g | \noBreak
  a16 h c a  h g a8  a16 g fis g  d'8 d | \noBreak

  a8 a d, d h' h g g | \noBreak
  a16 h c a  h g a8  a16 g fis a  g4 |
}
czestaKrywicaChordsVI = \chordmode {
  d2 g |
  d2 g |
  d2 g |
  d2 g |
}

czestaKrywicaMelodyVII = \relative c'' {
  h4 h  h16 a g fis  e e e8 | \noBreak
  dis16 e fis8  fis fis  g16 fis e dis  e g h8 | \noBreak

  h4 h  h16 a g fis  e e e8 | \noBreak
  dis16 e fis8  fis fis  g16 fis e dis  e4 |
}
czestaKrywicaChordsVII = \chordmode {
  e1:m |
  h2 e2:m |
  e1:m |
  h2 e2:m |
}

czestaKrywicaMelody = {
  \time 4/4
  \key g \major

  \repeat volta 2 { \czestaKrywicaMelodyI }
  \break
  \repeat volta 2 { \czestaKrywicaMelodyII }
  \break
  \key a \minor
  \repeat volta 2 { \czestaKrywicaMelodyIII }
  \break
  \key c \minor
  \repeat volta 2 { \czestaKrywicaMelodyIV }
  \break
  \key g \major
  \repeat volta 2 { \czestaKrywicaMelodyI }
  \break
  \repeat volta 2 { \czestaKrywicaMelodyVI }
  \break
  \repeat volta 2 { \czestaKrywicaMelodyVII }
  \break
  \repeat volta 2 { \czestaKrywicaMelodyV }
}
czestaKrywicaChords = {
  \germanChords
  \set chordNameLowercaseMinor = ##t
  \set chordChanges = ##t

  \czestaKrywicaChordsI
  \czestaKrywicaChordsII
  \czestaKrywicaChordsIII
  \czestaKrywicaChordsIV
  \czestaKrywicaChordsI
  \czestaKrywicaChordsVI
  \czestaKrywicaChordsVII
  \czestaKrywicaChordsV
}

\header {
  title = "Честа кръвица"
}
\score {
  <<
    \new Staff \czestaKrywicaMelody
    \new ChordNames \czestaKrywicaChords
  >>
}

