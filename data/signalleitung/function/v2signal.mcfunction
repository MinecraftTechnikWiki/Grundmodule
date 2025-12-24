# Es wird in allen sechs Richtungen geprüft ob sich dort ein gelber Beton befindet und nur dann wird jeweils dort eine neue Partikelwolke erzeugt.
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:yellow_concrete unless entity @e[distance=..0.5,type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}
