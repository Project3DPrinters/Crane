; homey.g
; called to home the Y axis
;
; generated by RepRapFirmware Configuration Tool on Tue Jun 26 2018 13:03:45 GMT-0400 (EDT)
G91              ; relative positioning
G1 Z5 F6000 S2   ; lift Z relative to current position
G1 S1 Y-505 F3600 ; move quickly to Y axis endstop and stop there (first pass)
G1 S2 Y5 F900     ; go back a few mm
G1 S1 Y-505 F900  ; move slowly to Y axis endstop once more (second pass)
G1 S2 Y52 F6000     ; go back a few mm
G1 Z-5 F6000 S2  ; lower Z again
G90              ; absolute positioning
G92 Y0		;Y is at 0