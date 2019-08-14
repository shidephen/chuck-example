Impulse imp => ResonZ filt => NRev rev => dac;
0.04 => rev.mix;
100.0 => filt.Q => filt.gain;

130.0 => float bpm;
(60.0/bpm)::second => dur q;

0.04 => rev.mix;
[0.5*q, q] @=> dur a[];

while(true){
    a[Std.rand2(0, 1)] => now;
    1.0 => imp.next;
    Std.mtof(Math.random2(60, 80)) => filt.freq;
