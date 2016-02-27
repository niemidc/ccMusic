%
\version "2.16.2"

composer = "Traditional American Folk Song"
poet = " "

piece = "Shenandoah (TTBB)"

translator = " "

musiccopyright = "Additional words and music by David Niemi"
arranger = "Arrangement by David Niemi and Hal Jackson"

%if single
    #(set-global-staff-size 12)
%else
    %if piano
        #(set-global-staff-size 15)
    %else
        #(set-global-staff-size 13)
    %end
%end


\header {
  dedication = "In memory of James Erb (1926 - 2014)"
  title = "Shenandoah"
  subtitle = "Traditional American Folk Song      (TTBB)     v1.00"
  tagline = " "
}

\paper {
    #(set-paper-size "letter")
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2.5\cm
    right-margin = 2.5\cm
    first-page-number = 1
    system-system-spacing #'minimum-distance = #15
    markup-system-spacing #'minimum-distance = #18
}

\markup {
  \fontsize #+0 \column {
    \line { " " }
    \line { " " }
    \line { { \circle cc "BY:SA" }
      "      " { "Additional words and music " \circle C "2015 David Niemi" }
      "      " { "Arrangement " \circle C "2015 David Niemi and Hal Jackson" }
    }
    \line \fontsize #-2 {
        "This work is licensed under the Creative Commons"
        "Attribution-ShareAlike 4.0 International License"
        " http://creativecommons.org/licenses/by-sa/4.0/deed.en_US"
    }
    \line { " " }
  }
}

bridgetempo = \markup { \bold \italic { faster } }

markc = \markup {
	\italic \bold bouncy " " " " "Harmony parts: close on \"nnn\"" }

subitomp = \markup { \dynamic mp \italic subito }

rit = \markup { \italic { rit. } }

atempo = \markup { \bold \italic { a tempo } }

allargando = \markup {
  \bold \italic { broadly }
}

TopMarks = {
  \tempo "Adagio" 4 = 72
  \dynamicUp
  \set Score.markFormatter = #format-mark-box-letters

  %p1 m1 5
  s1 | s1 | s1 | s1 |
  s1 | \mark \default s1 | s1 | s1 |

  %p2 m9 13
  s1 | s1 | s1 | \mark \default s1 |
  s1 | s1 | s1 | s1 |

  %p3 m17 21
  s1 | s1 | s1 | s1 |
  s2. s8 s8^\markc | \mark \default s1 | s1 |

  %p4 m24 27
  s1 | s1 | s1 |
  s1 | s1 | s1 | s1 |

  %p5 m31 36
  s2. s4^\bridgetempo | \mark \default s1 | s1 | s1 | s1 |
  s1 | s2. s4 | s1^\allargando | s2. s4^\atempo |

  %p6 m40 44
  \mark \default s1 | s1 | s1 | s1 |
  s1 | s1 | \mark \default s1 |

  %p7 m47 51
  s1 | s1 | s1 | \mark \default s1 |
  s1 | s1 | s1 | s1 | s1 ||
}

TimeLine = {
  \numericTimeSignature
  \time 4/4
  \override Score.BarNumber #'font-size = #0

  %p1 m1 5
  s2 s4 s4\mp | s1 | s2. s4^\breathe  | s1 | \break
  s2. s4 | s2. s4 | s4 s2 s4 | s1 | \break

  %p2 m9 13
  s2. s4 | s1 | s1 | s1 | \break
  s1 | s1 | s2. s4 | s1 | \break

  %p3 m17 21
  s2. s4\mf | s1 | s2. s4\mp | s1 | \break
  s2.^\fermata s4 | s1\< | s1\mf | \break

  %p4 m24 27
  s4.\> s8 s4 s4 | s4.\mp s8\< s2 | s8\f s4. s4 s4\> | \break
  s2 s4. s8\mf | s1 | s2. s4 | s1 | \break

  %p5 m31 36
  s2 s4 s4 | s1 | s1 | s1 | s2. s4 | \break
  s1 | s4.^\< s8 s4 s4^\f | s1 | s2. s4\mf | \break

  %p6 m41 44
  s1 | s1 | s1 | s1 | \break
  s4^\rit s4.\> s4 s8\!
	\override BreathingSign #'text = \markup {
	  \line { \musicglyph #"scripts.caesura.curved" }
	} \breathe | s4\mp s2\fermata s4 | s1 | \break

  %p7 m47 51
  s1 | s1 | s1 | s1 | \break
  s1 | s1 | s1 | s8\pp s4. s2 | s1 \bar "||"
}

theChords = \chordmode {
  %p1 m1 5
  s2 s4 s4 | e1 | s1 | a1 |
  e2. s4 | cis2.:m s4 | b8/dis a4.:/e s2 | e1 |

  %p2 m9 13
  s2. cis8:m b8 | a2:7+ s8 b8 b4:7 | e1 | e1 |
  e1 | a2. b4/dis | e1 | cis1:m |

  %p3 m17 21
  e1 | e1 | gis2.:m/dis e4 | ais2:7.5- s8 fis8:7 b4:7 |
  e1 | e4 b2./dis | cis8:m gis2/cis s8 e4/b | a2 s8 b4.:1.5.8 |

  %p4 m25 29
  e2. s8 b/dis | cis4:m gis2.:m | a2. s8 b8:7 | e1 |
  gis2.:m cis4:7m | ais2.:7.5- b4:7 | e2 s4 s4 | a1 |

  %p5 m33 37
  e1 | fis2:m b2 | e1 | cis1:m |
  gis1:m | fis1:m | b1:7 | e1 |

  %p6 m41 45
  s2 s4 s8 e8 | fis2.:7/a a4 | s1 | s2 s8 s4. |
  s2. s4 | s1 | s1 | s1 |

  %p7 m49 53
  e2. s4\p | s2 s4. s8 | e2 cis2:m | e2 fis2:7/a |
  e2 a4 b8 b8:maj7 | e1 | s1 ||
}

TenorOneMusic = \relative c' {
  \override BreathingSign #'Y-offset = #3
  \dynamicUp
  %p1 m1 5
  r2 r4 b,4 | e8 e e4 ~ e8 fis gis a | b8 gis4. ~ gis4 e'8( dis) |
	cis2 ~ cis8 b cis b |
  gis8 b4. ~ b4 r8 b8 | cis8 cis cis4 ~ cis8 gis b gis |
	fis8 e4. ~ e4 e8^\breathe fis | gis2 ~ gis8 e gis cis |

  %p2 m9 13
  b2 ~ b8 r8 e,8 fis | cis'2 ~ cis8 b8 a4 | gis2 r4 b4 |
	gis8 gis gis4 ~ gis8 fis gis a |
  b8 gis4. ~ gis4 e'8 dis | cis2 ~ cis8 b cis b | gis8 b4. ~ b4 r8 b8 |
	cis8 cis cis4 ~ cis8 gis b gis |

  %p3 m17 21
  a8 a4. ~ a4 r4 | gis4. a8 b2 | b4. a8 gis4 b8 e | e2 ~ e8 e8 dis4 |
  e2. r8 b,\mp | e8 e e4 ~ e8 fis gis a | b8 gis4. ~ gis4 e'8( dis) |
	cis2 ~ cis8 b cis b |

  %p4 m25 29
  gis8 b4. ~ b4 r8 b | cis cis cis4 ~ cis8 gis b gis | fis8 e4. ~ e4 r8 fis |
	gis2 ~ gis8 e gis cis |
  dis2. e8 fis | e2 ~ e8 e8 dis4 | e2 r2 | r1 |

  %p5 m33 37
  r1 | r1 | r2 r4 b4^\mf | cis4. dis8 e4 dis |
  gis,2. gis4 | fis'4 e dis cis | dis2 r4 b,4 | e8 e e4 ~ e8 fis gis a |

  %p6 m41 45
  b8 gis4. ~ gis4 e'8 dis | cis2 ~ cis8 b cis b | gis8 b4. ~ b4 r8 b |
	cis8 cis cis4 ~ cis8 gis b gis |
  cis4 cis2 e,8( fis) | gis2 ~ gis8 e gis cis | b2 r4 e,8 fis |
	 gis2 ~ gis8 b8 a4 |

  %p7 m49 53
  gis2 r2 | r1 | b4. b8 cis2 | b4. b8 cis2 |
  b4. b8 cis4 b | e8 e e2. ~ | e1 |
}

TenorTwoMusic = \relative c' {
  \override BreathingSign #'Y-offset = #3
  \dynamicUp
  %p1 m1 5
  r2 r4 b, | e8 e e4 ~ e8 fis gis a | b8 gis4. ~ gis4 b4 |
	cis2 ~ cis8 b cis b |
  gis b4. ~ b4  r8 b8 | gis8 gis gis4 ~ gis8 gis gis gis |
	fis8 e4. ~ e4 e8^\breathe fis | gis2 ~ gis8 e gis cis |

  %p2 m9 13
  gis2 ~ gis8 r8 e8 fis | gis2 ~ gis8 fis8 fis4 | e2 r4 b' |
	gis8 gis gis4 ~ gis8 fis gis a |
  b8 gis4. ~ gis4 e'8 dis | cis2 ~ cis8 b cis b | gis b4. ~ b4 r8 b8 |
	gis8 gis gis4 ~ gis8 gis b gis |

  %p3 m17 21
  fis8 e4. ~ e4 r4 | e4. fis8 gis4. gis8 | gis2. b8 b | ais2 ~ ais8 ais8 a4 |
  gis2. r4 | b4.\p b8 b4 b | e,4. e8 dis4 gis | a4. a8 a4 fis |

  %p4 m25 29
  b4. b8 b4 dis | e4. e8 e4 dis | r e,8 fis gis2 ~ | gis4 fis e b'4 |
  b4. b8 gis4 b8 b | ais2 ~ ais8 ais8 b8( a8) | gis2 r2 | r1 |

  %p5 m33 37
  r1 | r1 | r2 r4 b4^\mf | gis4. gis8 cis4 dis4 |
  b2. gis4 | a4  gis fis e4 | fis2 r4 b, | e8 e e4 ~ e8 fis gis a |

  %p6 m41 45
  b8 gis4. ~ gis4 b8 b | fis2 ~ fis8 b cis b | gis gis4. ~ gis4 r8 fis |
	a8 a a4 ~ a8 gis b gis |
  fis4 e2 r4 | r e8( fis) gis2 | gis4 fis e4 e8 fis |gis2 ~ gis8 gis8 fis4 |

  %p7 m49 53
  e2 r4 b'4^\mp | e4. b8 a4 gis4 | gis4. gis8 gis2 | gis4. gis8 fis2 |
  gis4. gis8 a4 fis8( a) | gis8 gis gis2. ~ | gis1 |
}

BariMusic = \relative c' {
  \override BreathingSign #'Y-offset = #3
  \dynamicUp
  %p1 m1 5
  r2 r4 b, | e8 e e4 ~ e8 fis gis a | b8 gis4. ~ gis4 gis4 |
	a2 ~ a8 b cis b |
  gis gis4. ~ gis4 r8 fis8 | e8 e e4 ~ e8 e dis e |
	dis8 cis4. ~ cis4 cis8^\breathe dis | e2 ~ e8 e8 gis a |

  %p2 m9 13
  dis,2 ~ dis8 r8 cis8 b | e2 ~ e8 dis8 cis8( dis8) | e2 r4 b |
	e8 e e4 ~ e8 cis dis e |
  fis8 gis4. ~ gis4 gis8 b | a2 ~ a8 b dis, dis | e gis4. ~ gis4 r8 fis8 |
	e8 e e4 ~ e8 e gis gis |

  %p3 m17 21
  dis8 cis4. ~ cis4 e8 fis | gis2 ~ gis8 e gis cis | b2. gis8 gis |
	gis2 ~ gis8 fis8 fis4 |
  b,2. r4 | gis'4.\p gis8 fis4 fis | gis4. gis8 gis4 e | e4. e8 fis4 dis |

  %p4 m25 29
  gis4. gis8 gis4 b | cis4. cis8 b4 b | cis4. cis8 cis4 r8 cis | b4. a8 gis2 |
  b4. b8 e,4 gis8 gis | gis2 ~ gis8 fis8 fis4 | b2 r4 b4 | 
	cis4. gis8 gis4 cis4 |

  %p5 m33 37
  b2.  gis4 | a gis fis4. e8 | gis8 b4. r4 b4^\mf | e,4. e8 cis4 gis'4 |
  gis2. dis4 | a'4 e b' a4 | a2 r4 b, | e8 e e4 ~ e8 fis gis a |

  %p6 m41 45
  b8 gis4. ~ gis4 gis8 gis | e2 ~ e8 dis e fis | gis gis4. ~ gis4 r8 dis |
	e8 e e4 ~ e8 e8 dis8 dis |
  dis4 e2 r4 | b'4. a8 gis2 | b4. b8 gis4 e8 fis | gis2 ~ gis8 e8 fis4 |

  %p7 m49 53
  e2 r2 | r1 | gis4. gis8 e2 | gis4. gis8 e2 |
  e4. e8 e4 dis | b8 b b2. ~ | b1 |
}

BassMusic = \relative c {
  \override BreathingSign #'Y-offset = #3
  \dynamicUp
  %p1 m1 5
  r2 r4 b | e8 e e4 ~ e8 fis gis a | b8 gis4. ~ gis4 e4 | a,2 ~ a8 gis a b |
  e e4. ~ e4 r8 dis8 | cis8 cis cis4 ~ cis8 cis b b |
	a8 a4. ~ a4 r4 | b4. b8 b2  |

  %p2 m9 13
  gis4. gis8 gis r cis b | a2 ~ a8 b8 b4 | e2 r4 b | e8 e e4 ~ e8 a, b cis |
  dis8 e4. ~ e4 gis8 dis | a2 ~ a8 b dis dis | e8 e4. ~ e4 r8 dis |
	cis8 e cis4 ~ cis8 e dis gis |

  %p3 m17 21
  a,8 a4. ~ a4 e'8 fis | gis2 ~ gis8 e gis e | dis2.  e8 dis |
	cis2 ~ cis8 fis,8 b4 |
  e,2. r4 | e'4.\p e8 dis4 dis | cis4. cis8 b4 b | a4. a8 b4 b |

  %p4 m25 29
  e4. e8 e4 dis | cis4. cis8 gis4 gis | a4. a8 a( gis) a b | e4. fis8 e2 |
  gis4. gis8 cis,4 e8 dis | cis2 ~ cis8 fis,8 b4 | e2 r4 b' |
	a4. gis8 gis4 a |

  %p5 m33 37
  gis2 fis4 e | fis4 gis dis4. e8 | e8 gis4. r2 | r2. e4\mf |
  dis4. dis8 dis4 dis | cis4 e dis cis4 | b2 r4 b |
	e8 e e4 ~ e8 fis gis a |

  %p6 m41 45
  b8 gis4. ~ gis4 e8 e | a,2 ~ a8 b cis dis | e e4. ~ e4 r8 b |
	a8 a a4 ~ a8 e' dis dis |
  a4 a2 r4 | gis'4. fis8 e2 | gis4. gis8 cis,4 e8 dis | e2 ~ e8 cis8 dis4 |

  %p7 m49 53
  e2 r2 | r1 | e4. e8 cis2 | e4. e8 a,2 |
  b4. b8 a4 b | e,8 e e2. ~ | e1 |
}


%%%%%%%%%%%%%%%%
%%%  LYRICS  %%%
%%%%%%%%%%%%%%%%

LongToSee = \lyricmode { O Shen -- an -- doh, __ I long to see you, __ }
AndHear = \lyricmode { and hear __ your roll -- ing riv -- er __ }
Refrain = \lyricmode { O'er the wild __ Mis -- sou -- ri }
BoundToGo = \lyricmode { A -- way, I'm bound to go, }

TooLongIveMissed = \lyricmode {
  O Shen -- an -- doh, __ too long I've missed you, __
}
WindingVerdant = \lyricmode {
  Wind -- ing through, __ your verd -- ant vall -- ey __
}
YetToGo = \lyricmode { Yet a -- way, I'm bound to go, }
startbold = {
  \override Lyrics.LyricText #'font-shape = #'italic
  \override Lyrics.LyricText #'font-series = #'bold
}
endbold = {
  \revert Lyrics.LyricText #'font-shape
  \revert Lyrics.LyricText #'font-series
}
YetToGoA = \lyricmode { Yet a -- way, __ I'm bound to go, __ }

SevnLongYears = \lyricmode {
  'Tis sev'n long years, __ since last I've seen you, __
}
WayHey = \lyricmode { Way -- hey, you roll -- ing riv -- er, }
ShenandoahTwo = \lyricmode {
  Shen -- an -- do -- ah, Shen -- an -- do -- ah,
}
ShennnandoahTwo = \lyricmode {
  Shennn -- an -- do -- ah, Shennn -- an -- do -- ah,
}
HeyRolling = \lyricmode {
  hey you roll -- ing, roll -- ing riv -- er
}

BridgeA = \lyricmode { I hear the riv -- er call, }
BridgeAA = \lyricmode { I hear the riv -- er call, as }
BridgeB = \lyricmode { it winds north down the val -- ley, }
BridgeC = \lyricmode { The old Blue Ridge of home, }
BridgeD = \lyricmode { I hope to see you soon! }

AtLastImNear = \lyricmode { O Shen -- an -- doh, __ at last I'm near you, }
AtLastImNearA = \lyricmode {
  O Shen -- an -- doh, __ at last I'm near you, __
}
GleamingWaters = \lyricmode { I can see __ your gleam -- ing wa -- ters, __ }
FromTheWild = \lyricmode { from the wild __ Mis -- sou -- ri }
TheWild = \lyricmode { The wild Mis -- sou -- ri }

ShenandoahFour = \lyricmode {
  Shen -- an -- doh, Shen -- an -- doh,
  Shen -- an -- doh, O Shen -- an -- doh
}

TenorOneWords = \lyricmode {
  \LongToSee \startbold \AndHear \LongToSee \YetToGoA \endbold \Refrain
  \TooLongIveMissed \startbold \WindingVerdant
  O Shen -- an -- doh, __ too long I've \endbold missed you, __
	Yet a -- way, bound to go \Refrain
  \startbold \SevnLongYears \WayHey \SevnLongYears \BoundToGo \endbold
  \Refrain
  \startbold \BridgeC \endbold \BridgeD
  \AtLastImNearA \startbold \GleamingWaters \endbold \AtLastImNear
  \startbold \BoundToGo \endbold \FromTheWild
  \ShenandoahFour
}

TenorTwoWords = \lyricmode {
  \LongToSee \AndHear \LongToSee \YetToGoA \startbold \Refrain \endbold
  \TooLongIveMissed \WindingVerdant
  O Shen -- an -- doh, __ too long I've \startbold missed you, __ \endbold
	Yet a -- way, to go, \Refrain
  \ShennnandoahTwo \HeyRolling
  Shen -- an -- do -- ah, Yet I'm bound __ a -- way, I'm bound to -- go,
  \Refrain
  \BridgeC \startbold \BridgeD \endbold
  \AtLastImNearA \GleamingWaters \startbold \AtLastImNear \endbold
  A -- way, far a -- way, \FromTheWild \startbold \TheWild \endbold
  \ShenandoahFour
}

BariWords = \lyricmode {
  \LongToSee \AndHear \LongToSee \YetToGoA \Refrain
  \TooLongIveMissed \WindingVerdant \TooLongIveMissed
  \startbold \YetToGo \endbold \Refrain
  \ShennnandoahTwo \HeyRolling
  Shen -- an -- do -- ah, Shen -- an -- doh.
  I'm bound a -- way, bound to go, \Refrain
  \startbold \BridgeA \BridgeB \endbold \BridgeC \BridgeD
  \AtLastImNearA \GleamingWaters \AtLastImNear
  Bound a -- way, far a -- way, \FromTheWild
  \ShenandoahFour
}

BassWords = \lyricmode {
  \LongToSee \AndHear \LongToSee
  Yet a -- way, bound to go, \Refrain
  \TooLongIveMissed \WindingVerdant \TooLongIveMissed \YetToGo \Refrain
  \ShennnandoahTwo \HeyRolling
  Shen -- an -- do -- ah, Shen -- an -- doh.
  Yet I'm bound a -- way, bound to -- go, \Refrain
  \BridgeAA \BridgeB The old Blue Ridge \BridgeD
  \AtLastImNearA \GleamingWaters \AtLastImNear
  Bound a -- way, far a -- way, \FromTheWild
  \ShenandoahFour
}

global = {
  \key e \major
  #(set-accidental-style 'modern-voice-cautionary)
  \dynamicUp
}

globalpiano = {
  \key e \major
  #(set-accidental-style 'modern-cautionary)
  \dynamicUp
}

#(ly:set-option 'midi-extension "mid")
\score {
  <<
    \new ChoirStaff <<
      %if t1
      \new Staff <<
	\set Staff.instrumentName = #"Tenor1 "
	\global
	\clef "G_8"
	%if softt1
	\set Staff.midiMinimumVolume = #0.2
	\set Staff.midiMaximumVolume = #0.4
	%else
	\set Staff.midiMinimumVolume = #0.5
	\set Staff.midiMaximumVolume = #0.9
	%end
	\new Voice = "TenorOne" \with {
	  \consists "Ambitus_engraver"
	}
	<<
	  \TopMarks
	  \TimeLine
	  \TenorOneMusic
	  \lyricsto "TenorOne" \new Lyrics \TenorOneWords
	>>
      >>
      %end t1

      %if t2
      \new Staff <<
	\set Staff.instrumentName = #"Tenor2 "
	\global
	\clef "G_8"
	%if softt2
	\set Staff.midiMinimumVolume = #0.2
	\set Staff.midiMaximumVolume = #0.4
	%else
	\set Staff.midiMinimumVolume = #0.5
	\set Staff.midiMaximumVolume = #0.9
	%end
	\new Voice = "TenorTwo" \with {
	  \consists "Ambitus_engraver"
	}
	<<
	  \TimeLine
	  \TenorTwoMusic
	  \lyricsto "TenorTwo" \new Lyrics \TenorTwoWords
	>>
      >>
      %end t2

      %if b1
      \new Staff <<
	\global
	\clef "bass"
	%if softb1
	\set Staff.midiMinimumVolume = #0.2
	\set Staff.midiMaximumVolume = #0.4
	%else
	\set Staff.midiMinimumVolume = #0.5
	\set Staff.midiMaximumVolume = #0.9
	%end
	\set Staff.instrumentName = #"Bass1 "
	\new Voice = "Bari" \with {
	  \consists "Ambitus_engraver"
	}
	<<
	  \TimeLine
	  \BariMusic
	  \lyricsto "Bari" \new Lyrics \BariWords
	>>
      >>
      %end b1

      %if b2
      \new Staff <<
	\global
	\clef "bass"
	%if softb2
	\set Staff.midiMinimumVolume = #0.2
	\set Staff.midiMaximumVolume = #0.4
	%else
	\set Staff.midiMinimumVolume = #0.5
	\set Staff.midiMaximumVolume = #0.9
	%end
	\set Staff.instrumentName = #"Bass2 "
	\new Voice = "Bass" \with {
	  \consists "Ambitus_engraver"
	}
	<<
	  \TimeLine
	  \BassMusic
	  \lyricsto "Bass" \new Lyrics \BassWords
	>>
      >>
      %end b2
    >>

    %if piano
    \new PianoStaff <<
      %if chords
      \new ChordNames { \theChords }
      %end chords
      \new Staff \with { printPartCombineTexts = ##f } <<
        \numericTimeSignature
        \clef bass
        \partcombine
        << \globalpiano \TenorOneMusic >>
        << \globalpiano \TenorTwoMusic >>
      >>

      \new Staff \with { printPartCombineTexts = ##f } <<
	\numericTimeSignature
	\clef bass
	\partcombine
	<< \globalpiano \BariMusic >>
	<< \globalpiano \BassMusic >>
     >>

   >>
   %end piano
  >>
  \layout {}
  \midi {
    \context {
      \Staff
    }
  }
}


%%%%%%%%%%%
%%  END  %%
%%%%%%%%%%%
