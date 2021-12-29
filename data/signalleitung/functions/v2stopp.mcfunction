# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSigLe.2Wert

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiSigLe.2Auswahl] remove EtiSigLe.2Auswahl

# Stöcke und Betons werden entfernt.
clear @a minecraft:stick{EigSigLe.2Alle:true}
clear @a minecraft:yellow_concrete{EigSigLe.2Alle:true}

# Alle Objekte mit dem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigSigLe.2Alle:true} } }] add EtiSigLe.2Alle
kill @e[tag=EtiSigLe.2Alle]

# Der Chunk wird entladen.
forceload remove ~ ~
