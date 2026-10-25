\version "2.26.0"
\include "deutsch.ly"

\paper {
  #(set-paper-size "a4")
  top-margin = 20
  bottom-margin = 20
  left-margin = 20
  right-margin = 20
  indent = 0
  print-page-number = ##f
  print-first-page-number = ##f
  % skip-first-staff = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##t

  oddHeaderMarkup = \markup {}
  evenFooterMarkup = \markup {}

  oddFooterMarkup = \markup {
    \fill-line {
      \unless \on-first-page \fromproperty #'page:page-number-string
    }
  }

  evenFooterMarkup = \markup {
    \fill-line {
      \fromproperty #'page:page-number-string
    }
  }
}

\book {

  % ==================== COVER PAGE ====================
  \bookpart {
    \header {
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
          \vspace #20
          \line { "Wszystkie prawa zastrzeżone" }
          \line { "Listopad 2026" }
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
        \line { "3" }
        \line { "4" }
        \line { "5" }
      }
    }

    \pageBreak
  }

  \include "szumiala_leszczyna.ly"
  \pageBreak
  \include "hej_na_szutoskiem_polu.ly"
  \pageBreak
}
