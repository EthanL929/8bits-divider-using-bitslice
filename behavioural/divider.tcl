# =========================================================================
# SimVision command script divider.tcl

simvision {

 # =========================================================================
 # Wave Window
 
  # Open new waveform window

    window new WaveWindow  -name  "Waves for divider"
    window  geometry  "Waves for divider"  1010x325+50+25
    waveform  using  "Waves for divider"

  # Add basic signals to wave window

    waveform  add  -signals  divider_stim.Clock
    waveform  add  -signals  divider_stim.nReset
    waveform  add  -signals  divider_stim.divider.Done
    waveform  add  -signals  divider_stim.divider.SDO
    waveform  add  -signals  divider_stim.divider.Quotient
    waveform  add  -signals  divider_stim.dividerRemainder
    waveform  add  -signals  divider_stim.divider.datapath.nBorrow
    waveform  add  -signals  divider_stim.divider.datapath.nBorrow

}
