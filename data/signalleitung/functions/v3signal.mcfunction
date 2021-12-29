# Es wird in allen sechs Richtungen geprüft ob sich dort gelber Beton befindet und nur dann wird ein Markierer an der Stelle positioniert.
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal] run summon minecraft:marker ~ ~ ~ {Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}
