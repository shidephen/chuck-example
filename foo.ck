SinOsc s => NRev rev => dac;

130.0 => float bpm;
(60.0/bpm)::second => dur q;

0.04 => rev.mix;
[0.5*q, q] @=> dur a[];

while(true){
	a[Std.rand2(0, 1)] => now;
	Std.rand2f(30.0, 1000.0) => s.freq;
}
