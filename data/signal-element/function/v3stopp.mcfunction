# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZSigEl.3Wert

# Die Rüstungsständer und gelber Beton wird aus dem Inventar entfernt.
clear @a *[minecraft:custom_data~{EigSigEl.3Alle:true}]

# Das eventuell noch vorhandene Etikett wird entfernt.
tag @a[tag=EtiSigEl.3Auswahl] remove EtiSigEl.3Auswahl

# Alle Drops bekommen das gleiche Etikett und alle Objekte insgesamt die dieses Etikett besitzen werden entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigSigEl.3Alle:true}] run kill @s
kill @e[tag=EtiSigEl.3Alle]

# Der Chunhk wird entladen.
forceload remove ~ ~
