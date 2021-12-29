# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSigLe.3Wert

# Das eventuell vorhandene Etikett wird entfernt.
tag @a[tag=EtiSigLe.3Auswahl] remove EtiSigLe.3Auswahl

# Der Stock und der Beton werden entfernt.
clear @a minecraft:stick{EigSigLe.3Alle:true}
clear @a minecraft:yellow_concrete{EigSigLe.3Alle:true}

# alle Objekte mit dem Etikett werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigSigLe.3Alle:true} } }] add EtiSigLe.3Alle
kill @e[tag=EtiSigLe.3Alle]

# Der geladene chunk wird wieder entladen.
forceload remove ~ ~
