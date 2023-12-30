(
Pdef(0,
    Pbind(*[
        type: Pwrand2([\cln, \], [1, 5], inf),
        snd: Pwrand2([\saw, \fmx, \kps, \ixa, \sin], [1, 2, 1, 0.75, 1], inf),
        scale: Pdup(Pmeanrand(9, 99), Prand([
            Scale.harmonicMinor(\just),
            Scale.minor,
            Scale.aeolian(\sept2),
            Scale.mixolydian(\sept1),
            Scale.pelog(\just),
        ], inf)),
        degree: Pdup(Plprand(1, 4), Plprand(-7, 0)),
        mtranspose: Pdup(Pmeanrand(9, 99), Pwhite(-4, 3)),
        octave: Pdup(Plprand(1, 2), Pmeanrand(4, 8).round),
        amp: Plprand(0.35, 0.7) / Pkey(\octave).linlin(4, 8, 1, 3.5),
        atk: Plprand(19.0, 29.0),
        atk: Plprand(1.0, 9.0),
        rel: Plprand(9.0, 29.0),
        crv: Phprand(0.0, 4.0),
        crt: Plprand(0.0, -4.0),
        bnd: Pmeanrand(-0.02, 0.02).trace(prefix: ", "),
        bnt: Pexprand(1.0, 15.0).linlin(1.0, 15.0, 15.0, 1.0),
        bno: Pexprand(1.0, 15.0).linlin(1.0, 15.0, 15.0, 1.0),
        lpf: Pkey(\freq) * Phprand(2.5, 5.0),
        dur: 1 / Pwrand2([5, 11], [2, 1], inf),
        legato: Pwhite(39.0, 69.0),
        wid: Pseg(Pdup(2, Pmeanrand(0.0, 0.5)), Pwhite(3.0, 30.0), \lin, inf),
        cav: 2.0,
        cai: Pdup(Plprand(1, 8), Phprand(0.0, 1.0)),
        pan: Pseq((0.0, 0.005 .. 1.0), inf),
        mi1: Plprand(0.0, 2.0),
        mi2: Plprand(0.0, 2.0),
        mi3: Plprand(0.0, 2.0),
        mi4: Plprand(0.0, 2.0),
        hr1: Plprand(0, 5),
        hr2: Plprand(0, 5),
        hr3: Plprand(0, 5),
        hr4: Plprand(0, 5),
        tnh: 1,
        tng: 18.0,
        jpr: 1,
        jpg: 2,
    ])
).play
)