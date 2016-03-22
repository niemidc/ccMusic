# Makefile for Shenandoah
#
# TODO:
#	- use the same rules for each part
#	- make lilypond and timidity less noisy
#	- use an "out" directory that doesn't get deleted at the end,
#	  just clean up intermediate products

SATB :=	shenandoah-satb.ly
SATB_OUT := shenandoah-satb.pdf shenandoah-satb.mp3
SATB_PIANO := shenandoah-satb-piano.pdf
SOPRANO := shenandoah-soprano.mp3 shenandoah-soprano.pdf
ALTO := shenandoah-alto.mp3 shenandoah-alto.pdf
TENOR := shenandoah-tenor.mp3 shenandoah-tenor.pdf
BASS := shenandoah-bass.mp3 shenandoah-bass.pdf

all:	satb ttbb

#	@mkdir -p tmp ttbb-out

satb:	soprano alto tenor bass satb-out

satb-piano: $(SATB_PIANO)

soprano: $(SOPRANO)

alto: $(ALTO)

tenor: $(TENOR)

bass: $(BASS)


satb-out: $(SATB_OUT)

$(SATB_OUT):	$(SATB) Makefile
	rm -f $(SATB_OUT)
	rm -rf tmp
	mkdir tmp
	lilypp soprano alto tenor bass < $(SATB) > tmp/satb.ly
	( cd tmp && lilypond satb.ly && mv satb.pdf .. )
	( cd tmp && timidity satb.mid -Ow -o satb.wav )
	( cd tmp && lame -S -m m satb.wav --preset 20 ../satb.mp3 )

$(SATB_PIANO):	$(SATB) Makefile
	rm -f $(SATB_PIANO)
	rm -rf tmp
	mkdir tmp
	lilypp soprano alto tenor bass piano chords < $(SATB) > tmp/satb-piano.ly
	( cd tmp && lilypond satb-piano.ly  && mv satb-piano.pdf .. )

$(SOPRANO):	$(SATB) Makefile
	rm -f $(SOPRANO)
	rm -rf tmp
	mkdir tmp
	lilypp soprano single < $(SATB) > tmp/soprano.ly
	( cd tmp && lilypond soprano.ly && mv soprano.pdf .. )
	( cd tmp && timidity soprano.mid -Ow -o soprano.wav )
	( cd tmp && lame -S -m m soprano.wav --preset 10 ../soprano.mp3 )
	rm -rf tmp

$(ALTO):	$(SATB) Makefile
	rm -f $(ALTO)
	rm -rf tmp
	mkdir tmp
	lilypp alto single < $(SATB) > tmp/alto.ly
	( cd tmp && lilypond alto.ly && mv alto.pdf .. )
	( cd tmp && timidity alto.mid -Ow -o alto.wav )
	( cd tmp && lame -S -m m alto.wav --preset 10 ../alto.mp3 )
	rm -rf tmp

$(TENOR):	$(SATB) Makefile
	rm -f $(TENOR)
	rm -rf tmp
	mkdir tmp
	lilypp tenor single < $(SATB) > tmp/tenor.ly
	( cd tmp && lilypond tenor.ly && mv tenor.pdf .. )
	( cd tmp && timidity tenor.mid -Ow -o tenor.wav )
	( cd tmp && lame -S -m m tenor.wav --preset 10 ../tenor.mp3 )
	rm -rf tmp

$(BASS):	$(SATB) Makefile
	rm -f $(BASS)
	rm -rf tmp
	mkdir tmp
	lilypp bass single < $(SATB) > tmp/bass.ly
	( cd tmp && lilypond bass.ly && mv bass.pdf .. )
	( cd tmp && timidity bass.mid -Ow -o bass.wav )
	( cd tmp && lame -S -m m bass.wav --preset 10 ../bass.mp3 )
	rm -rf tmp

TTBB := shenandoah-ttbb.ly
TTBB_OUT := shenandoah-ttbb.pdf shenandoah-ttbb.mp3
T1 := t1.mp3 t1-predom.mp3 shenandoah-t1.pdf
T2 := t2.mp3 t2-predom.mp3 shenandoah-t2.pdf
B1 := b1.mp3 b1-predom.mp3 shenandoah-b1.pdf 
B2 := b2.mp3 b2-predom.mp3 shenandoah-b2.pdf

t1:	$(T1)
t2:	$(T2)
b1:	$(B1)
b2:	$(B2)

ttbb:	t1 t2 b1 b2 ttbb-out t1-predom t2-predom b1-predom b2-predom

ttbb-out: $(TTBB_OUT)

$(TTBB_OUT):	$(TTBB) Makefile
	rm -f $(TTBB_OUT)
	rm -rf tmp
	mkdir tmp
	lilypp t1 t2 b1 b2 < $(TTBB) > tmp/ttbb.ly
	( cd tmp && lilypond ttbb.ly && mv ttbb.pdf .. )
	( cd tmp && timidity ttbb.mid -Ow -o ttbb.wav )
	( cd tmp && lame -S -m m ttbb.wav --preset 20 ../ttbb.mp3 )

$(T1):	$(TTBB) Makefile
	rm -f $(T1)
	rm -rf tmp
	mkdir tmp
	lilypp t1 single < $(TTBB) > tmp/t1.ly
	( cd tmp && lilypond t1.ly && mv t1.pdf .. )
	( cd tmp && timidity t1.mid -Ow -o t1.wav )
	( cd tmp && lame -S -m m t1.wav --preset 10 ../t1.mp3 )
	rm -rf tmp

$(T2):	$(TTBB) Makefile
	rm -f $(T2)
	rm -rf tmp
	mkdir tmp
	lilypp t2 single < $(TTBB) > tmp/t2.ly
	( cd tmp && lilypond t2.ly && mv t2.pdf .. )
	( cd tmp && timidity t2.mid -Ow -o t2.wav )
	( cd tmp && lame -S -m m t2.wav --preset 10 ../t2.mp3 )
	rm -rf tmp

$(B1):	$(TTBB) Makefile
	rm -f $(B1)
	rm -rf tmp
	mkdir tmp
	lilypp b1 single < $(TTBB) > tmp/b1.ly
	( cd tmp && lilypond b1.ly && mv b1.pdf .. )
	( cd tmp && timidity b1.mid -Ow -o b1.wav )
	( cd tmp && lame -S -m m b1.wav --preset 10 ../b1.mp3 )
	rm -rf tmp

t1-predom:	$(TTBB) Makefile
	@rm -f $@
	@rm -rf tmp && mkdir tmp
	@lilypp b1 b2 t1 t2 softt2 softb1 softb2 < $(TTBB) > tmp/$@.ly
	@( cd tmp && lilypond -s $@.ly && timidity $@.mid -Ow -o - 2>tlog \
		| lame -S -m m --tt Shenandoah-TTBB --ta $@ --abr 10 - \
		../$@.mp3 )
	@rm -rf tmp

t2-predom:	$(TTBB) Makefile
	@rm -f $@
	@rm -rf tmp && mkdir tmp
	@lilypp b1 b2 t1 t2 softt1 softb1 softb2 < $(TTBB) > tmp/$@.ly
	@( cd tmp && lilypond -s $@.ly && timidity $@.mid -Ow -o - 2>tlog \
		| lame -S -m m --tt Shenandoah-TTBB --ta $@ --abr 10 - \
		../$@.mp3 )
	@rm -rf tmp

b1-predom:	$(TTBB) Makefile
	@rm -f $@
	@rm -rf tmp && mkdir tmp
	@lilypp b1 b2 t1 t2 softt1 softt2 softb2 < $(TTBB) > tmp/$@.ly
	@( cd tmp && lilypond -s $@.ly && timidity $@.mid -Ow -o - 2>tlog \
		| lame -S -m m --tt Shenandoah-TTBB --ta $@ --abr 10 - \
		../$@.mp3 )
	@rm -rf tmp

b2-predom:	$(TTBB) Makefile
	@rm -f b2-predom
	@rm -rf tmp && mkdir tmp
	@lilypp b1 b2 t1 t2 softt1 softt2 softb1 < $(TTBB) > tmp/$@.ly
	@( cd tmp && lilypond -s $@.ly && timidity $@.mid -Ow -o - 2>tlog \
		| lame -S -m m --tt Shenandoah-TTBB --ta $@ --abr 10 - \
		../$@.mp3 )
	@rm -rf tmp


$(B2):	$(TTBB) Makefile
	rm -f $(B2)
	rm -rf tmp
	mkdir tmp
	lilypp b2 single < $(TTBB) > tmp/b2.ly
	( cd tmp && lilypond b2.ly && mv b2.pdf .. )
	( cd tmp && timidity b2.mid -Ow -o b2.wav )
	( cd tmp && lame -S -m m b2.wav --preset 10 ../b2.mp3 )
	rm -rf tmp

##  END  ##
