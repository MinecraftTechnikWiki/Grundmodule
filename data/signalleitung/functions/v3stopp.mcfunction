# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSigLe.3Wert

# Das eventuell vorhandene Etikett wird entfernt.
tag @a[tag=EtiSigLe.3Auswahl] remove EtiSigLe.3Auswahl

# Der Stock und der Beton werden entfernt.
clear @a *[minecraft:custom_data~{EigSigLe.3Alle:true}]

# alle Objekte mit dem Etikett werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSigLe.3Alle:true}] run kill @s
kill @e[tag=EtiSigLe.3Alle]

# Der geladene Chunk wird wieder entladen.
forceload remove ~ ~
