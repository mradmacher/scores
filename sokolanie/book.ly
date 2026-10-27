\version "2.26.0"
\include "deutsch.ly"

\paper {
  #(set-paper-size "a4")
  top-margin = 18
  bottom-margin = 18
  left-margin = 18
  right-margin = 18
  indent = 0
  print-page-number = ##f
  print-first-page-number = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  print-all-headers = ##t

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
      \column {
        \line { \bold "Szumiała leszczyna" }
        \line { \bold "Hej na szutoskiem polu" }
        \line { \bold "Pobiły mie Parkoszanie" }
        \line { \bold "Leć głosie po rosie" }
        \line { \bold "Szumi woda i wali" }
      }
    }

    \pageBreak
  }

  \bookpart {
    \include "szumiala_leszczyna.ly"
    %\markup { \vspace #2 }
    \pageBreak
    \include "hej_na_szutoskiem_polu.ly"
    \pageBreak
    \include "pobili_mnie_parkoszanie.ly"
    \pageBreak
    \include "lec_glosie_po_rosie.ly"
    \pageBreak
    \include "szumi_woda_i_wali.ly"
  }

}
