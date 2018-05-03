SinOsc s => dac;
TriOsc t => dac;

110.0 => float melody;
0.5 => float on_gain;

0.3::second => dur my_dur;
146.8 => s.freq;
1.6837 * melody => t.freq;

for(0 => int i; i < 2; i++){
  on_gain => t.gain;
  my_dur => now;
  0 => t.gain;
  my_dur => now;
}

138.6 => s.freq;
1.5 * melody => t.freq;

on_gain => t.gain;
second => now;

for(330 => int i; i > 0; i--){
  i => t.freq;
  1.333 * i => s.freq;
  0.01::second => now;
}
