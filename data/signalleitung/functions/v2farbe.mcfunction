# Es wird immer violetter Beton platziert, bevor getestet wird welche Farbe platziert werden soll.
setblock ~ ~ ~ minecraft:purple_concrete replace

# Der Zahlenwert von dem Alter wird ausgelesen und in einen Punkte-Ziel der Partikelwolke gespeichert.
execute store result score @s PZSigLe.2Wert run data get entity @s Age

# Wenn der Wert bei eins liegt, wird die Signal-Funktion geladen.
execute if entity @s[scores={PZSigLe.2Wert=1}] run function signalleitung:v2signal

# Verschiedene Betonfarben werden platziert.
execute unless entity @s[scores={PZSigLe.2Wert=7..9}] run setblock ~ ~ ~ minecraft:red_concrete replace
execute unless entity @s[scores={PZSigLe.2Wert=5..11}] run setblock ~ ~ ~ minecraft:orange_concrete replace
execute unless entity @s[scores={PZSigLe.2Wert=3..13}] run setblock ~ ~ ~ minecraft:yellow_concrete replace
