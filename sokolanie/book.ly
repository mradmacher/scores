\version "2.26.0"
\include "deutsch.ly"

\paper {
  #(set-paper-size "a4")
  top-margin = 20
  bottom-margin = 20
  left-margin = 20
  right-margin = 20
  indent = 0
  ragged-last-bottom = ##f
  print-page-number = ##f
  % skip-first-staff = ##f
  % Ensure enough space for multiple verses
  % Ensure page breaks happen naturally between songs
  % ragged-bottom = ##f
  ragged-last-bottom = ##t

  % Cover page settings
  oddHeaderMarkup = \markup {}
  evenHeaderMarkup = \markup {}
  % oddFooterMarkup = \markup {}
  evenFooterMarkup = \markup {}

  oddFooterMarkup = \markup {
    \column {
      \fill-line {
        %% Copyright header field only on book first page.
        \if \on-first-page \fromproperty #'header:copyright
      }
      \fill-line {
        %% Part tagline header field only on each part last page.
        \if \on-last-page-of-part \fromproperty #'header:parttagline
      }
      \fill-line {
        %% Tagline header field only on book last page.
        \if \on-last-page \fromproperty #'header:tagline
      }
    }
  }
}

\book {

  % ==================== COVER PAGE ====================
  \bookpart {
    \header {
      %title = "Pieśni ludowe z Pilzna i okolic"
      copyright = "Wszystkie prawa zastrzeżone"
      parttagline = "Listopad 2026"
    }

    \markup {
      \fill-line {
        \null
        \center-column {
          \line { \fontsize #12 { \bold "Pieśni ludowe" } }
          \vspace #2
          \line {  \fontsize #12 { \bold "z Pilzna" } }
          \vspace #2
          \line { \fontsize #12 { \bold "i okolic" } }
          \vspace #10
          \line { \large "zebrali Małgorzata i Łukasz Chorążakowie" }
        }
        \null
      }
    }

    % Force a page break after the cover
    \pageBreak
  }


    % ==================== TABLE OF CONTENTS (Optional) ====================
  \bookpart {
    \header {
      title = "Spis treści"
      subtitle = ""
      tagline = ##f
    }

    \markup {
      \vspace #2
      \column {
        \line { \bold "Szumiała leszczyna" }
        \line { \bold "Hej na szutoskiem polu" }
        \line { \bold "Pobiły mie Parkoszanie" }
      }
      \null
      \null
      \column {
        \line { "2" }
        \line { "3" }
        \line { "4" }
      }
    }

    \pageBreak
  }

  \include "hej_na_szutoskiem_polu.ly"
  \pageBreak
}

%\layout {
%  % Optional: Add a small gap between verses if they look too crowded
%  \context {
%    \Lyrics
%    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.minimum-distance = #4
%  }
%}
