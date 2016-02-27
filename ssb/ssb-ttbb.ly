% Strategy -- perhaps put it in D Major?  Range for melody is D -> A
% Put melody on top -- Tenor will be below Lead most of the time
% (or have parts switch some)
%
composer = "Music: John Stafford Smith,  arr. David Niemi and Hal Jackson"
poet = "Words: Francis Scott Key"

piece = "ANACREON"
meter = ""

musiccopyright = " "

tagline = " "
\version "2.16.2"


#(set-global-staff-size 13)

\header {
  title = "The Star-Spangled Banner (TTBB)"
}

#(set-default-paper-size "letter")
#(ly:set-option 'midi-extension "mid")

\paper {
  indent = 0\in
  left-margin = 1.00\in
  right-margin = 1.00\in
  top-margin = 0.5\in
  bottom-margin = 0.25\in
  system-system-spacing #'basic-distance = #10
  system-system-spacing #'minimum-distance = #10
  % annotate-spacing = ##t
}


Timeline = {
  \numericTimeSignature
  \time 3/4
  \tempo 4=76
%  \tempo 4=56
  \override Score.BarNumber #'font-size = #0

  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | \partial 2 s2 | \break
  \partial 4 s4 | s2. | s2. | s2. | s2. | \partial 2 r2 | \break
  \partial 4 s4 | s2. | s2 r4 | r2 s4 | s2. | s2 r4 \bar "||"
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

LeadMusic = \relative c' {
    bes8( g) | ees4 g bes | ees2	    g8 f | ees4 g, a | bes2
	bes8 bes | g'4. f8 ees4 | d2		c8 d | ees4 ees bes | g ees
    bes'8 g | ees4 g bes | ees2		    g8 f | ees4 g, a | bes2
	bes8 bes | g'4. f8 ees4 | d2		c8 d | ees4 ees bes | g ees
    g'8 g | g4 aes bes | bes2		    aes8 g | f4 g aes | aes2

    % gave proof through the night	    that our flag was still there
    aes4 | g4. f8 ees4 | d2		    c8 d | ees4 g, a | bes2
    bes4 | ees ees ees8( d) | c4 c c |	    f aes8([ g]) f([ ees]) |
						ees4( d2)^\fermata | s
    bes8 bes | ees4.( f8) g aes | bes2 s4 | s2
					    ees,8 f | g4. aes8 f4 | ees2 s4
}

TenorMusic = \relative c' {
    bes8( g) | ees4 g bes | c2		    d8 d | c4 ees, ees | f2
	bes8 bes | bes4. aes8 g4 | bes2		aes8 bes | bes4 g f | g ees
    bes'8 g | ees4 g bes | c2		    d8 d | c4 ees, ees | f2
	bes8 bes | ees4. d8 bes4 | bes2		aes8 bes | g4 g f | g ees
    ees'8 d | des4 d d | f( ees)	    ees8 ees | d4 e f | ees( d)

    % gave proof through the night	    that our flag was still there
    d4 | bes4. aes8 g4 | bes2		    aes8 bes | bes4 ees ees | d2
    aes4 | g4 aes bes | bes aes e' |	    aes, c8(bes) c4 | bes2. | s2
    bes8 bes | bes2 ees8 ees | f4( ees)^\fermata s | s2
					    c8 b | ees4. d8 aes4 | g2 s4
}

BariMusic = \relative c' {
    bes8( g) | ees4 ees f | g2		    g8 g | g4 c, c | d2
	d8 bes | ees4. d8 ees4 | f2		f8 f | ees4 ees d | ees ees
    bes'8 g | ees4 ees f | g2		    g8 g | g4 c, c | d2
	bes'8 bes | bes4. aes8 bes4 | d2	f,8 f | ees4 ees d | ees ees
    bes'8 bes | bes4 aes aes | bes2	    bes8 bes | aes4 bes bes | bes2

    % gave proof through the night	    that our flag was still there
    f4 | ees4. d8 ees4      | f2	    f8 f | ees4 ees c | f2
    f4 | ees d ees4 | ees4 ees bes' |	    f f8([ g]) ees4 | f4(aes2)
						| s2
    bes8 bes | g4.( f8) g f | g2 s4 | s2
					    aes8 aes | g4. f8 bes,4 | bes2 s4
}

BassMusic = \relative c' {
    bes8( g) | ees4 ees d | c2		    b8 b | c4 c f, | bes2
	d8 bes | ees,4. f8 g( aes) | bes2	aes8 aes | g4 ees' d | ees ees
    bes'8 g | ees4 ees d | c2		    b8 b | c4 c f, | bes2
	bes'8 bes | ees,4. f8 g8(aes) | bes2	aes,8 aes | g4 ees' d | ees ees
    ees8 ees | ees4 f f | g2		    ees8 ees | bes4 c d | f2

    % gave proof through the night	    that our flag was still there
    bes,4 | ees,4. f8 g( aes) | bes2	    aes8 aes | g4 c f, | bes4
						bes8\([ aes8]
    g8 f\) | ees4 f g | aes aes g |	    f f8([ g]) aes([ a]) |
						bes2.\fermata) | s2
    bes'8 bes | ees,4.( d8) c b | bes2\fermata s4 | s2
					    c8 b | bes4. bes8 bes4 | ees,2 s4
}

global = {
    #(set-accidental-style 'modern-voice-cautionary)
    \key ees \major
    % \override Score.BarNumber #'break-visibility = #end-of-line-invisible
    % \set Score.barNumberVisibility = #(every-nth-bar-number-visible 3)
    \override Score.BarNumber #'stencil
	= #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
}

\score {
  % \displayLilyMusic
%   \transpose ees bes
  \new ChoirStaff <<
    \new Staff <<
      \global
      \clef "G_8"
      << \Timeline >>
      \new Voice = "Tenor" \with { \consists "Ambitus_engraver" } <<
		\voiceOne
               \LeadMusic
      >>
      \new Voice = "Lead" \with { \consists "Ambitus_engraver" } <<
               \override Ambitus #'X-offset = #2
               \voiceTwo
		\TenorMusic
      >>
    >>
    \context Lyrics = one \lyricsto "Lead" \verseOne
    \new Staff <<
      \global
      \clef "bass"
      << \Timeline >>
      \new Voice = "Bari" \with { \consists "Ambitus_engraver" } <<
		\voiceOne
		\BariMusic
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


