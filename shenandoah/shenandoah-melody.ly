%
\version "2.16.2"

composer = ""
poet = " "

piece = "Shenandoah (Melody)"

translator = " "

musiccopyright = "Additional words and music by David Niemi"
arranger = " "


#(set-global-staff-size 14)

\header {
  title = "Shenandoah"
  subtitle = "Traditional American Folk Song      (Melody Only)     v1.0"
  tagline = " "
}

\paper {
    #(set-paper-size "letter")
    top-margin = 2\cm
    bottom-margin = 2\cm
    left-margin = 2.5\cm
    right-margin = 2.5\cm
    first-page-number = 1
    system-system-spacing #'minimum-distance = #15
    markup-system-spacing #'minimum-distance = #18
}


faster = \markup { \bold \italic { faster } }

rit = \markup { \bold \italic { rit. } }



% TimeLine includes shared dynamics
TimeLine = {
  \tempo "Adagio" 4 = 72
  \numericTimeSignature
  \time 4/4
  \override Score.BarNumber #'font-size = #1
  \dynamicUp

  s2 s4 s4\mp | s1 | s1 | s1 | \break
  s2. s8 s8\< | s2 s8\mf s8 s4 | s4 s2 s4 | \break
  s1 | s4^\> s4 s4\! s4 | s1 | s1 | s1 |
  s1 | s1 | s2. s4 | s1 |
}

MelodyMusic = {
  %p1 m1 5
  r2 r4 b, |
  \repeat volta 4 {
	e8 e e4 ~ e8 fis gis a | b8 gis4. ~ gis4 e'8( dis) |
	cis2 ~ cis8 b cis b |
	gis8 b4. ~ b4 r8 b8 | cis8 cis cis4 ~ cis8 gis b gis |
	fis8 e4. ~ e4 \breathe e8 fis | gis2 ~ gis8 e gis cis |

	b2. e,8 fis | gis2 ~ gis8 fis8 fis4 |
  }
  \alternative  {
    {	e2 r4 b | \break }
    {	e2 r4 b'^\faster | cis4. gis8 gis4 cis4 | b2 a4 gis | a gis fis4. e8 |
	gis8 b8 ~ b4 r4 b4 | cis4. dis8 e4 dis | gis,2. b4 | a4 gis fis e | fis2 r4 b,4 |
    }
    {	e2 r4 b'^\rit | e4. b8 a4 gis | b4. b8 cis2 | b4. b8 cis2 | b4. b8 a4 b4 | e8 e8 e2. ~ | e1 ||
    }
  }
}

TrebleMelodyMusic = \relative c'' {
  \override BreathingSign #'Y-offset = #3
  \MelodyMusic
}

BassMelodyMusic = \relative c' {
  \override BreathingSign #'Y-offset = #3
  \MelodyMusic
}


%%%%%%%%%%%%%%%%
%%%  LYRICS  %%%
%%%%%%%%%%%%%%%%

Refrain = \lyricmode { Yet a -- way, I'm bound to go, O'er the wild __ Mis -- sou -- ri }

verseOne = \lyricmode {
  O
  \set stanza = "1. "
  Shen -- an -- doh, __ I long to see you, __ and hear __ your roll -- ing riv -- er __
  O Shen -- an -- doh, __ I long to see you, __
  \Refrain
  O
}

verseTwo = \lyricmode {
  (O)
  \set stanza = "2. "
  Shen -- an -- doh, __ too long I've missed you, __
  Wind-ing through __ your verd -- ant vall -- ey __
  O Shen -- an -- doh, __ too long I've missed you, __
  \Refrain
  'Tis
}

verseThree = \lyricmode {
  ('Tis)
  \set stanza = "3. "
  sev'n long years, __ since last I've seen you, __ Way -- hey, you roll -- ing riv -- er,
  'Tis sev'n long years, __ since last I've seen you, __
  Yet a -- way,__ I'm bound to go, O'er the wild __ Mis -- sou- _ _ ri

  I hear the riv -- er call, as it winds north down the val -- ley,
  The old Blue Ridge of home, I hope to see you soon!
  O
}

verseFour = \lyricmode {
  (O)
  \set stanza = "4. "
  Shen -- an -- doh, __ at last I'm near you, __
  I_can see, __ your gleam -- ing wa -- ters, __
  O Shen -- an -- doh, __ at last I'm near you, __
  A __ _ -- way,__ so far a -- way,
  from the wild __ Mis -- sou-
  _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _
  ri
  The wild Mis -- sou -- ri
  Shen -- an doh, Shen -- an doh, Shen -- an doh, O Shen -- an doh
}

global = {
  \key e \major
  #(set-accidental-style 'modern-voice-cautionary)
}

#(ly:set-option 'midi-extension "mid")
\score {
  <<
    \new ChoirStaff <<
      \new Staff <<
	\global
	\clef treble
	\new Voice = "TrebleMelody" \with {
	  \consists "Ambitus_engraver"
	}
	<<
	  \TimeLine
	  \TrebleMelodyMusic
	>>
      >>
      \context Lyrics = one \lyricsto "TrebleMelody" \verseOne
      \context Lyrics = two \lyricsto "TrebleMelody" \verseTwo
      \context Lyrics = three \lyricsto "TrebleMelody" \verseThree
      \context Lyrics = four \lyricsto "TrebleMelody" \verseFour

      \new Staff <<
	\global
	\clef bass
	\new Voice = "BassMelody" \with {
	  \consists "Ambitus_engraver"
	}
	<<
	  \TimeLine
	  \BassMelodyMusic
	>>
      >>
    >>
  >>
  \layout {}
  \midi {
    \context {
      \Staff
    }
  }
}

\markup {
  \column {
    \line  { " " }
    \line { { \circle cc "BY:SA" }
      "      " { "Additional words and music " \fontsize #-3 { \circle C }
			"2015 David Niemi" }
    }
    \line \fontsize #-2 {
        "This work is licensed under the Creative Commons"
        "Attribution-ShareAlike 4.0 International License"
        " http://creativecommons.org/licenses/by-sa/4.0/deed.en_US"
    }
    \line  { " " }
  }
}

%%%%%%%%%%%
%%  END  %%
%%%%%%%%%%%
