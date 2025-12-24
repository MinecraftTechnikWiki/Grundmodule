# Wenn der Spieler den Stock ausgewählt hat, wird ihm ein Etikett gegeben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigSigLe.2Stock:true}] run tag @s add EtiSigLe.2Ausgewaehlt

# Wenn der Spieler gerade den Stock ausgewählt hat, wird eine Partikelwolke erzeugt, falls sich unter dem spieler gelber Beton aufhält.
execute at @a[tag=EtiSigLe.2Ausgewaehlt,tag=!EtiSigLe.2Auswahl] align xz if block ~0.5 ~-1 ~0.5 minecraft:yellow_concrete run summon minecraft:area_effect_cloud ~0.5 ~-1 ~0.5 {Duration:15,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["EtiSigLe.2Alle","EtiSigLe.2Signal"]}

# Das Etikett wird vergeben um den Tick der Auswahl oder Abwahl zu erfassen.
tag @a[tag=EtiSigLe.2Ausgewaehlt,tag=!EtiSigLe.2Auswahl] add EtiSigLe.2Auswahl
tag @a[tag=!EtiSigLe.2Ausgewaehlt,tag=EtiSigLe.2Auswahl] remove EtiSigLe.2Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiSigLe.2Ausgewaehlt] remove EtiSigLe.2Ausgewaehlt

# Wenn sich die Partikelwolke im Beton befindet, wird die Farben-Funktion aufgerufen.
execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigLe.2Signal] at @s if block ~ ~ ~ #signalleitung:v2leitung run function signalleitung:v2farbe
