
composer = "Music: John Stafford Smith, arr. David Niemi and Hal Jackson"
poet = "Words: Francis Scott Key"

piece = "ANACREON"
meter = ""

musiccopyright = " "

tagline = " "
\version "2.16.2"


#(set-global-staff-size 13)

\header {
  title = "The Star-Spangled Banner (SATB)"
}

#(set-default-paper-size "letter")
#(ly:set-option 'midi-extension "mid")

\paper {
  indent = 0\in
  left-margin = 1.00\in
  right-margin = 1.00\in
  top-margin = 0.25\in
  bottom-margin = 0.25\in
  system-system-spacing #'basic-distance = #10
  system-system-spacing #'minimum-distance = #10
  % annotate-spacing = ##t
}

rall = \markup { \italic rall. }

Timeline = {
  \numericTimeSignature
  \time 3/4
  \tempo 4=68
%  \tempo 4=50
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | s2. | \partial 2 r2 | \break
  \partial 4 s4 | s2. | s2 r4 | r2 s4 | s2 s4^\rall | s2 r4 \bar "||"
}


verseOne = \lyricmode {
  O! say can you see by the dawn's ear -- ly light,
  What so proud -- ly we hailed at the twi -- light's last gleam -- ing,
  Whose broad stripes and bright stars through the per -- il -- ous fight,
  O'er the ram -- parts we watch'd, were so gal -- lant -- ly stream -- ing?
  And the Rock -- ets' red glare, the Bombs burst -- ing in air,
  Gave proof through the night that our Flag was still there;
	O! say does that __ star- spang -- led Ban -- ner __ yet __ wave, __
	O'er the Land of the free, and the home of the brave?
}

SopranoMusic = \relative c' {
  f8(d) | bes4 d f | bes2		d8 c | bes4 d, e | f2 
	f8 f | d'4.  c8 bes4 | a2	g8 a | bes4 bes f | d4 bes
  f'8 d | bes4 d f | bes2		d8 c | bes4 d, e | f2 
	f8 f | d'4.  c8 bes4 | a2	g8 a | bes4 bes f | d4 bes

  d'8 d | d4 ees f | f2			ees8 d | c4 d ees | ees2
  ees4 | d4. c8 bes4 | a2		g8 a | bes4 d, e | f2

  f4 | bes bes bes8( a) | g4 g g8([f]) | c'4 ees8([ d]) c([bes]) |
	bes4(a2^\fermata) | s2
  f8 f | bes4.( c8) d ees | f4~f^\fermata	s4 | s2
					bes,8 c | d4. ees8 c4 | bes2 s4
}

AltoMusic = \relative c {
  f'8(d) | bes4 d f | g2		a8 a | g4 bes, bes | c2 
	f8 f | f4.  f8 f4 | f2		ees8 f | f4 d c | d4 bes
  f'8 d | bes4 d f | g2			g8 g | g4 d c | c2 
	f8 f | f4. \autoBeamOff ees8 \autoBeamOn d8(g) | f2
					ees8 f | f4 d c | bes4 bes

  bes'8 a | aes4 a a | c4( bes4)	bes8 bes | a4 b c | bes4(a4)
  f4 | bes4. ees,8 f4 | f2			ees8 f | f4 bes bes | a2

  ees4 | d ees f4 | f4 ees8([d]) b'4 | ees,4 g8(f) g4 | f2. |  s2
  f8 ees | d4.( f8) bes bes | c4(bes) s4 | s2
					g8 ges | f4. g8 ees4 | d2 s4
}
TenorMusic = \relative c {
  f8(d) | bes4 bes' c | d2		d8 d   | d4 g, g | a2 
	a8 a | bes4.  a8 bes4 | c2	bes8 a | bes4 f a | f4 f
  f8 d | bes4 bes' c | d2		d8 d   | d4 bes8([a]) g([bes]) |
						bes4(a) 
	a8 f | f4.  a8 bes4 | c2	bes8 a | bes4 bes a | bes4 bes

  d8 d d4 ees c | ees4(d)		ees8 d | ees4 d c | c2
  a4 | f4. a8 bes4 | c4(a4)		c8 c | bes4 bes g | c2

  c4 | bes4 a bes | bes4 g d' | c c8([d]) bes8(d) | c4(ees2) | s2
  f,8 f | bes4.(c8) d c | d2 s4 | s2
					bes8 a | bes4. bes8 bes([a]) | f2 s4
}
BassMusic = \relative c {
  f8( d) | bes4 bes' a | g2		ges8 ges | g4 g c, | f2 
	a8 a | bes,4.  c8 d8(ees) | f2	ees8 ees | d4 bes4 a | bes4 bes
  f'8 d | bes4 bes' a | g4(d4)		e8 fis | g4 g c, | f2 
	a8 f | bes,4.  c8 d4 | f2	ees8 ees | d4 bes' a | bes4 bes

  bes8 bes | bes4 c a | bes2		bes8 bes | f4 g a | f2
  a,4 | bes4. c8 d8(ees) | f2		ees8 ees | d4 g c, | f4 f8\([ees]

  d8 c\) | bes4 c d | ees4 ees g | c, c8([ d]) ees([ e]) | f2.\fermata) | s2
  f8 f | f4.( a8) g ges | f2\fermata s4 | s2
					ees8 ees | d4. c8 f4 | bes,2 s4
}

global = {
    #(set-accidental-style 'modern-voice-cautionary)
    \key bes \major
    \override Score.BarNumber #'stencil
        = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
}

#(ly:set-option 'midi-extension "mid")
#(set-accidental-style 'modern-cautionary)
\score {
  \transpose bes a
  \new ChoirStaff <<
    \new Staff <<
      \global
      \clef "treble"
      << \Timeline >>
      \new Voice = "Soprano" \with { \consists "Ambitus_engraver" } <<
		\voiceOne
		\SopranoMusic
      >>
      \new Voice = "Alto" \with { \consists "Ambitus_engraver" } <<
               \override Ambitus #'X-offset = #2
               \voiceTwo
               \AltoMusic
      >>
    >>
    \context Lyrics = one \lyricsto "Soprano" \verseOne
    \new Staff <<
      \global
      \clef "bass"
      << \Timeline >>
      \new Voice = "Tenor" \with { \consists "Ambitus_engraver" } <<
		\voiceOne
		\TenorMusic
      >>
      \new Voice = "Bass" \with { \consists "Ambitus_engraver" } <<
               \override Ambitus #'X-offset = #2
               \voiceTwo
               \BassMusic
      >>
      \context Lyrics = two \lyricsto "Bass" \lyricmode {
	\skip 4 \repeat unfold 70 { \skip 2. }
	there; O __
      }
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
    \fill-line { \composer              " "             \small \caps \piece }
    \fill-line { \poet                  " "             \small \caps \meter }
  }
}


