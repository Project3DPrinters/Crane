; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool on Wed Aug 29 2018 03:48:52 GMT-0400 (Eastern Daylight Time)
M561 ; clear any bed transform
; Probe the bed at 4 points

M669 K0							;
M671 X32.0:202.0:202.0:30.0 Y32.0:32.0:202.0:202.0	;
G28							;
G30 P0 X32 Y32 H2 Z-99999				; probe near an adjusting screw
G30 P1 X202 Y32 H2 Z-99999				; probe near an adjusting screw
G30 P2 X202 Y202 H2 Z-99999				; probe near an adjusting screw
G30 P3 X30 Y202 H2 Z-99999 S4				; probe near an adjusting screw