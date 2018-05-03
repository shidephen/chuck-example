Mandolin m => dac;

130.0 => float bpm;
(60.0/bpm)::second => dur q;

[50, 48] @=> int notes[];
[8, 8] @=> int rhythm[];

fun void play(int note, dur len){
  <<< note >>>;
  Std.mtof(note) => m.freq;
  1 => m.noteOn;
  len => now;
}

for(0 => int i; i < 2; i++){
  play(notes[i], q*rhythm[i]);
}

