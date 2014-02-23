\version "2.8.7"
\include "deutsch.ly"

A = \relative c''{
  \key d \minor
  \repeat volta 2 {
    cis8 d d cis b cis4 b8 a g4 | cis8 d d cis b cis4 b8 a g4 |
    cis8 d d cis b cis4 b8 a g4 |  }
  \alternative{ { a8 g fis g a4 g8 a a a e } { a8 g fis g a4 g8 a a a4 } }
}

B = \relative c''{
  \key e \minor
  \repeat volta 2 {
    a8 g fis e h'4 e,8 h'8 h h e, | a8 g fis e h'4 e,8 h'8 h h e, |
    a8 g fis e h'4 e,8 h'8 h h e, |
  }
   \alternative{
     { a g fis g a4 d,8 a'8 a a d, } { a' g fis g a4 d,8 a'8 a a4 }
  }
}

% Middle part

C= \relative c''{
  \key g \major
  \repeat volta 2 {
    a4 e' e d8 e4 d | e d d c8 d4 c8 h | g4 a8 h c d h c4 h4 |
    g a8 a g fis g a4 a |
  }
}

D = \relative c''{
  \key g \major
  \repeat volta 2 {
    g4 a8 h c d h c4 h4 | g4 a8 h c d h c4 h4 | g4 a8 h c d h c4 h4 |
    g4 a8 a g fis g a4 a|
  }
}

E = \relative c''{
  \key g \major
  \repeat volta 2 {
    c8 d c h a g a h h h g | c8 d c h a g a h h h g | c8 d c h a g a h h h g |
  }
  \alternative{
      { a g fis g a4 g8 a a a e } { a g fis g a4 g8 a a a4 }
  }
}

F = \relative c''{
  \key g \major
  \repeat volta 2 {
    a8 g c h a g a h h h g | a8 g c h a g a h h h g | a8 g c h a g a h h h g |
  }
  \alternative{
    { a g fis g a4 g8 a a a e} { a g fis g a4 g8 a a a4 }
  }
}

% Trumpet solo

G = \relative c'' {
  \key e \minor
  \repeat volta 2 {
    g8 a a g c h a h g a4 | g8 a a g c h a h g a4 | g8 a a g c h a h g a4 |
  }
  \alternative {
    { a8 g fis g a4 g8 a a a e} { a8 g fis g a4 g8 a a a4 }
  }
}

H = \relative c''{
  \key e \minor
  \repeat volta 2 {
    fis8 g fis e fis4 e8 fis g fis e | fis g fis e fis4 e8 dis dis dis c |
    h c dis e fis4 e8 dis dis dis c |
  }
  \alternative{
    {dis e dis4 c8 h a h h h fis } {dis' e dis4 c8 h a h h h4 }
  }
}

I = \relative c''{
  \key e \minor
  \repeat volta 2 {
    dis8 e dis4 dis8 e dis dis e dis4 | dis8 e dis4 c8 h a h h h fis |
    dis'8 e dis4 dis8 e dis dis e dis4
  }
  \alternative{
    { fis8 e dis4 c8 h a h h h fis } { fis'8 e dis4 c8 h a h h h4 }
  }
}

J = \relative c''{
  \key e \minor
  \repeat volta 2 {
    fis8 e dis4 c8 h c dis dis dis h | dis8 e dis4 c8 h c dis dis dis h |
    fis'8 e dis4 c8 h c dis dis dis h
  }
  \alternative{
      { dis8 e dis4 c8 h a h h h fis } { dis'8 e dis4 c8 h a h h h4 }
  }
}

kopanica = {
  \clef treble
  \time 11/8
  \set Timing.beatStructure = #'(2 2 3 2 2)

  \A \break \A \break \B \break \A \break \B \break
  \C \break \D \break \E \break \F \break
  \B \break
  r2 r4. r2 | r2 r4. r2 |
  \G \break \H \break \I \break \J
}

\header{ title = \markup{ Kopanica } }
\score{
  \new Staff \transpose g f \kopanica
  \layout{}
  \midi{}
}
