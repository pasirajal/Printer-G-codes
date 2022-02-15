; Made by PasRaj 15.2.2022
; NOTE: !!REMOVE BOWDEN TUBE CONNECTION BEFORE STARTING!!
M107
;TYPE:Custom
G91                                 ;use relative positioning
G0 5                               ;move Z up 5mm prior to homing
G90                                 ;absolute positioning
M82                                 ;set extruder to absolute mode
M107                                ;start with the fan off
G28                                 ;home all axes
G1 Z25 F5000                        ;lift nozzle to leave room for filament ooze
M104 S190     						;set extruder temp


M109 S180     						;wait for extruder temp
G92 E0                              ;set extruder to 0;
G00 X200 Y100                           ;move X/Y to min end-stops
Z25                              ;move Z to min end-stops

G91 								; Set all axes to relative
G1 E100.00000 F1000.000
M01 
G1 E100.00000 F1000.000
M01 
G1 E100.00000 F1000.000
M01 
G1 E100.00000 F1000.000
M01 
G1 E100.00000 F1000.000
M01 
G1 E100.00000 F1000.000
M01 

G4              ;wait until all previous commands are done
M221 S100       ;set flow rate to 100%
M104 S0         ;turn off nozzle heater
M140 S0         ;turn off bed heater
M107            ;turn off part cooling fan
G91             ;use relative positioning

M84             ;turn off stepper motors
