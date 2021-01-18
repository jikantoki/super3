;
; HSPOGG define and macros
;
#ifndef __hspogg__
#define __hspogg__

#uselib "hspogg.dll"
#func global dmmini dmmini 2
#func global dmmbye onexit dmmbye 0
#func global dmmreset dmmreset 0
#func global dmmdel dmmdel $202
#func global dmmvol dmmvol $202
#func global dmmpan dmmpan $202
#func global dmmloop dmmloop $202
#func global dmmload dmmload $202
#func global dmmplay dmmplay $202
#func global dmmstop dmmstop $202
#func global dmmstat dmmstat $202

#endif

