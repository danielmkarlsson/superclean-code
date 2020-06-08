(
Pdef(\0,
	Pbind(*[
		dur: Pstutter(Pexprand(1,3,inf),Pn(Prand((1..9)/24),inf),inf),
		type: \clean,
		s: \fmx,
		n: PSloop(
			Prand([-12,-10,-7,-4,0,2,4,6,7,9,11,14],inf)-12,
			bufSize: 3,
			lookBack: Pstutter(Pexprand(1,5),Pseq([0,1,2,3,4,5,6,7],inf),inf)
		),
        legato: Pexprand(8.0,32.0),
        atk: Pexprand(0.0001,0.01),
        hld: Pkey(\dur)*11,
        rel: Pkey(\dur)*8,
        gain: Pexprand(0.75,2.0).trace,
        rps: Pexprand(1,9),
        hr1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        hr2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        hr3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        hr4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1..4),inf)),
        mi2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1.0..4.0),inf)),
        mi3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1.0..4.0),inf)),
        mi4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pshuf((1.0..4.0),inf)),
        fdb: Pexprand(0.01,100.0),
        en1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pexprand(0.0001,0.555)),
        en2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pexprand(0.2,0.666)),
        en3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pexprand(0.3,0.777)),
        en4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pkey(\en1)*Pkey(\en2)/Pkey(\en3)*Pexprand(0.4,0.888)),
        hl1: Pexprand(0.025,1.125),
        hl2: Pexprand(0.025,1.125),
        hl3: Pexprand(0.025,1.125),
        hl4: Pexprand(0.025,1.125),
        cu1: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        cu2: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        cu3: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        cu4: Pstutter(Pkey(\rps)+Pwhite(0,7),Pwhite(0.25,1.0)),
        room: 0.94,
        size: 0.94,
        dry: 0.8,
        lpf: Pexprand(20,20000),
        pan: Pwhite(0.0,1.0),
    ])
).play(quant:1);
)

Pdef(\0).stop;

// You need a couple of things for this code to work on your machine:
// https://github.com/danielmkarlsson/SuperClean
// https://github.com/dkmayer/miSCellaneous_lib