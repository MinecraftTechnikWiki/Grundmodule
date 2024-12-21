# Wenn der Spieler den Stock ausgewählt hat, wird ihm ein Etikett gegeben.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigSigLe.3Stock:true}] run tag @s add EtiSigLe.3Ausgewaehlt

# Wenn er den Stock gerade ausgewählt hat, wird unter ihm geprüft ob unter ihm gelber beton ist. Nur dann wird ein Markierer erzeugt.
execute at @a[tag=EtiSigLe.3Ausgewaehlt,tag=!EtiSigLe.3Auswahl] align xz if block ~0.5 ~-1 ~0.5 minecraft:yellow_concrete run summon minecraft:marker ~0.5 ~-1 ~0.5 {Small:true,NoGravity:true,Marker:true,Invisible:true,Tags:["EtiSigLe.3Alle","EtiSigLe.3Signal"]}

# Wenn er gerade nicht mehr den Stock ausgewählt hat, wird dem Markierer ein Etikett vergeben.
execute at @a[tag=!EtiSigLe.3Ausgewaehlt,tag=EtiSigLe.3Auswahl] align xz positioned ~0.5 ~-1 ~0.5 run tag @e[distance=..0.5,type=minecraft:marker,tag=EtiSigLe.3Signal,sort=nearest,limit=1] add EtiSigLe.3Erloschen

# Je nach dem ob der Spieler den stock gerade ausgewählt hat oder nicht wird ein Etikett vergeben.
tag @a[tag=EtiSigLe.3Ausgewaehlt,tag=!EtiSigLe.3Auswahl] add EtiSigLe.3Auswahl
tag @a[tag=!EtiSigLe.3Ausgewaehlt,tag=EtiSigLe.3Auswahl] remove EtiSigLe.3Auswahl

# Das Etikett wird entfernt.
tag @a[tag=EtiSigLe.3Ausgewaehlt] remove EtiSigLe.3Ausgewaehlt

# Wenn ein Markierer das Etikett besitzt vergibt er es an seine Nachbarn ebenfalls.
execute at @e[type=minecraft:marker,tag=EtiSigLe.3Signal,tag=EtiSigLe.3Erloschen] run tag @e[distance=..1.2,type=minecraft:marker,tag=EtiSigLe.3Signal,sort=nearest,limit=7] add EtiSigLe.3Erloschen

# Wenn der Markierer in Beton steckt, wird die Farben-Funktion geladen.
execute as @e[type=minecraft:marker,tag=EtiSigLe.3Signal] at @s if block ~ ~ ~ #signalleitung:v3leitung run function signalleitung:v3farbe
