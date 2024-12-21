# Es wird ein Etikett vergeben, wenn man den Rüstungsständer in der Schnellleiste ausgewählt hat.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigSigEl.3Signal:true}] run tag @s add EtiSigEl.3Ausgewaehlt

# Wenn Spieler gerade den Rüstungsständer ausgewählt haben, wird eine Partikelwolke erzeugt, sofern ein Empfänger-Rüstungsständer in einem Umkreis von 30 Blöcken vorhanden ist.
execute at @a[tag=EtiSigEl.3Ausgewaehlt,tag=!EtiSigEl.3Auswahl] if entity @e[distance=..30,type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["EtiSigEl.3Alle","EtiSigEl.3Signal"]}

# Es wird ein Etikett vergeben oder entfernt, wenn der Spieler den Rüstungsständer gerade ausgewählt hat oder ihn abgewählt hat.
tag @a[tag=EtiSigEl.3Ausgewaehlt,tag=!EtiSigEl.3Auswahl] add EtiSigEl.3Auswahl
tag @a[tag=!EtiSigEl.3Ausgewaehlt,tag=EtiSigEl.3Auswahl] remove EtiSigEl.3Auswahl

# Das Etikett wird wieder entfernt, damit es immer nur in dem Tick vorhanden ist, in dem der Rüstungsständer ausgewählt wurde.
tag @a[tag=EtiSigEl.3Ausgewaehlt] remove EtiSigEl.3Ausgewaehlt

# Die Partikelwolke bekommt ihren Wert um eins erhöht. Falls noch keinen Wert besitzt wird null angenommen.
scoreboard players add @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.3Signal] PZSigEl.3Wert 1

# Je nach dem welchen Wert die Partikelwolke besitzt, werden die Partikel anders gefäbrt sein.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.3Signal,scores={PZSigEl.3Wert=1..10}] run particle minecraft:block{block_state:{Name:"minecraft:yellow_concrete"} } ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..25]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.3Signal,scores={PZSigEl.3Wert=11..20}] run particle minecraft:block{block_state:{Name:"minecraft:red_concrete"} } ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..25]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.3Signal,scores={PZSigEl.3Wert=21..60}] run particle minecraft:block{block_state:{Name:"minecraft:purple_concrete"} } ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..25]

# Wenn ein Empfänger-Rüstungsständer irgend einen Wert über null besitzt, wird sein Wert um eins verringert.
scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,scores={PZSigEl.3Wert=1..}] PZSigEl.3Wert 1

# Die Partikelwolke wird so ausgerichtet, dass sie zum nächsten Empfänger blickt und wird anschließend einen halben Meter vorwärts bewegt.
execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.3Signal] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^0.5

# Wenn die Partikelwolke den Empfänger-Rüstungsständer erreicht hat, wird ihr Wert auf den Rüstungsständer übertragen und sie selbst bekommt die Lebensdauer auf den Wert eins gesetzt, sodass sie im nächsten Tick verschwindet.
execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.3Signal,scores={PZSigEl.3Wert=1..}] at @s if entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,sort=nearest,limit=1] store success entity @s Duration int 1 run scoreboard players operation @e[distance=..1,type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,sort=nearest,limit=1] PZSigEl.3Wert = @s PZSigEl.3Wert

# Empfänger-Rüstungsständer leuchten solange auf, wie sie noch einen Wert über null besitzen.
effect give @e[type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,scores={PZSigEl.3Wert=1..}] minecraft:glowing 1 1 false

# Der Betonblock unter dem Empfänger-Rüstungsständer nimmt die gleiche Farbe an wie das Partikel der Partikelwolke.
execute at @e[type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,scores={PZSigEl.3Wert=1..10}] run setblock ~ ~-1 ~ minecraft:yellow_concrete replace
execute at @e[type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,scores={PZSigEl.3Wert=11..20}] run setblock ~ ~-1 ~ minecraft:red_concrete replace
execute at @e[type=minecraft:armor_stand,tag=EtiSigEl.3Empfaenger,scores={PZSigEl.3Wert=21..60}] run setblock ~ ~-1 ~ minecraft:purple_concrete replace
