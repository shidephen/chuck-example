Mandolin m => dac;

130.0 => float bpm;
(60.0/bpm)::second => dur q;

// The Tormented
[64, 65,72, 64, 65, 71, 64, 65,69, 64, 65, 72] @=> int notes[];
[1.0, 1.0, 1.0, 1.0, 1.0, 3.0, 1.0, 1.0, 1.0, 1.0, 1.0, 3.0] @=> float rhythm[];

fun void play(int note, dur len){
  <<< note >>>;
  Std.mtof(note) => m.freq;
  1 => m.noteOn;
  len => now;
}

for(0 => int i; i < 12; i++){
  play(notes[i], q*rhythm[i]);
}

