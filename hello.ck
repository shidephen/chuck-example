<<< "Hello, World" >>>;
SinOsc s => dac;
220.0 => float v;

while(true){
  v + 10.0 => v;
  v => s.freq;
  1::second => now;
}

