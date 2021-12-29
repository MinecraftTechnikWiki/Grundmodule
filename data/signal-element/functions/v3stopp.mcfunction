# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSigEl.3Wert

# Die Rüstungsständer und gelber Beton wird aus dem Inventar entfernt.
clear @a minecraft:armor_stand{EigSigEl.3Alle:true}
clear @a minecraft:yellow_concrete{EigSigEl.3Alle:true}

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiSigEl.3Auswahl] remove EtiSigEl.3Auswahl

# Alle Drops bekommen das gleiche Etikett und alle Objekte insgesamt die dieses Etikett besitzen werden entfernt.
tag @e[type=minecraft:item,nbt={Item:{tag:{EigSigEl.3Alle:true} } }] add EtiSigEl.3Alle
kill @e[tag=EtiSigEl.3Alle]

# Der Chunhk wird entladen.
forceload remove ~ ~
