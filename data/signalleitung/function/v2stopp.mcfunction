# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSigLe.2Wert

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiSigLe.2Auswahl] remove EtiSigLe.2Auswahl

# Stöcke und Betons werden entfernt.
clear @a *[minecraft:custom_data~{EigSigLe.2Alle:true}]

# Alle Objekte mit dem Etikett werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSigLe.2Alle:true}] run kill @s
kill @e[tag=EtiSigLe.2Alle]

# Der Chunk wird entladen.
forceload remove ~ ~
