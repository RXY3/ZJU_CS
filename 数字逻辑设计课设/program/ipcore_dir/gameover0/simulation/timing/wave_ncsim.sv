
 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"


      waveform add -signals /gameover0_tb/status
      waveform add -signals /gameover0_tb/gameover0_synth_inst/bmg_port/CLKA
      waveform add -signals /gameover0_tb/gameover0_synth_inst/bmg_port/ADDRA
      waveform add -signals /gameover0_tb/gameover0_synth_inst/bmg_port/DINA
      waveform add -signals /gameover0_tb/gameover0_synth_inst/bmg_port/WEA
      waveform add -signals /gameover0_tb/gameover0_synth_inst/bmg_port/DOUTA
console submit -using simulator -wait no "run"
