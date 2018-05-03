Impulse imp => ResonZ filt => NRev rev => dac;
0.04 => rev.mix;
100.0 => filt.Q => filt.gain;

while(true){
  Std.mtof(Math.random2(60, 80)) => filt.freq;
  1.0 => imp.next;
  200::ms => now;
}

