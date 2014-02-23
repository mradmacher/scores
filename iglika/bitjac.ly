\version "2.8.7"
\include "deutsch.ly"

A = \relative c''{
  \repeat volta 2 {
    h8^\markup{ \circle {\bold A} } ais16 h c8 h8 |
    h16 cis dis e fis8 eis16 fis | g8  fis16 g e8 dis16 e |
  }
  \alternative { { fis8 h16 h h ais h8 } { fis8 fis fis4 } }
}

B = \relative c' {
  % \key a \major
  \repeat volta 2 {
    e8^\markup{ \circle {\bold B} } a a a16 e | a8 a16 h cis8 cis16 a |
    d16 cis h8 h16 a h cis |
  }
  \alternative {
    {a16 h cis d e8 e }
    { a,16 e cis'h a4 \bar "||" } }
}

C = \relative c''{
  % \key a \major
  \repeat volta 2{
    d16^\markup{ \circle {\bold C } } cis h8 h16 a h cis |
    a16 h cis d e8 e16 a, | d16 cis h8 h16 a h cis |
  }
  \alternative { { a16 e cis' h a8 a16 e } { a16 e cis' h a4 \bar "||" } }
}

D = \relative c'' {
  % \key a \major
  \repeat volta 2 {
    cis8^\markup{ \circle \bold D } dis16 e e16 e e8 |
    cis8 dis16 e e16 e d e | fis16 e d d d8 h |
  }
  \alternative {
    { cis16 cis cis8 cis16 cis cis8 } { cis16 cis cis8 cis4 \bar "||" } }
}

E = \relative c'' {
  \partial 16*3 fis16 fisis gis
  \repeat volta 2 {
    a16^\markup{ \circle \bold E } fis a16 a g e g g |
    fis fis fis a,16 h cis d dis | e16 cis e e d16 h d d |
    cis cis cis a e' fis fisis gis | a16 fis a16 a g e g g |
    fis fis fis a,16 h cis d dis | e16 cis e e d16 h d d |
  }
  \alternative { { cis4 r16 fis fisis gis } { cis,4 r4 \bar "||" } }
}

bitjac = {
  \clef treble
  \key a \major
  \time 2/4
  \A \B \C \D \E
}

\header { title = \markup { Bitjac } }
\score {

  \new Staff \transpose a g \bitjac
  \layout{}
  \midi{}
}

