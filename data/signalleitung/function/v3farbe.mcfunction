# Der violette Beton wird immer platziert und weiter unten entscheidet der Wert ob sich die Farbe ändert.
setblock ~ ~ ~ minecraft:purple_concrete replace

# Der Wert von Markierern wird bis zum Wert acht hochgezählt danach wird pausiert. Er wird weitergezählt wenn er das entsprechende Etikett erhalten hat.
execute if entity @s[tag=!EtiSigLe.3Erloschen] unless entity @s[scores={PZSigLe.3Wert=8..}] run scoreboard players add @s PZSigLe.3Wert 1
scoreboard players add @s[tag=EtiSigLe.3Erloschen] PZSigLe.3Wert 1

# Wenn das Signal nicht erloschen ist und der Wert bei eins liegt, wird die Signal-Funktion aufgerufen.
execute if entity @s[tag=!EtiSigLe.3Erloschen,scores={PZSigLe.3Wert=1}] run function signalleitung:v3signal

# Es werden verschiedene Farben platziert, abhängängig des Wertes.
execute unless entity @s[scores={PZSigLe.3Wert=7..9}] run setblock ~ ~ ~ minecraft:red_concrete replace
execute unless entity @s[scores={PZSigLe.3Wert=5..11}] run setblock ~ ~ ~ minecraft:orange_concrete replace
execute unless entity @s[scores={PZSigLe.3Wert=3..13}] run setblock ~ ~ ~ minecraft:yellow_concrete replace

# Ist das Signal erloschen und die Signalstärke überschritten, wird der Markierer entfernt.
kill @s[tag=EtiSigLe.3Erloschen,scores={PZSigLe.3Wert=16..}]
