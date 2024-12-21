# Ein Punkte-Ziel wird erstellt.
scoreboard objectives add PZSigLe.2Wert dummy ["Signalleitung.2: ",{"text":"Wert der Signale","bold":true}]

# Ein Stock mit speziellen Eigenschaften wird Spielern im Umkreis von 15 Blöcke gegeben.
give @a[distance=..15] minecraft:stick[minecraft:lore=['"Wähle den Stock aus"','"um unter dir den"','"Block zu aktivieren."'],minecraft:custom_name='{"text":"Signal","color":"dark_purple","bold":true}',minecraft:custom_data={EigSigLe.2Alle:true,EigSigLe.2Stock:true},minecraft:enchantment_glint_override=true]

# Gelber Beton, der als Leitung verwendet werden kann, wird den Spielern gegeben.
give @a[distance=..15] minecraft:yellow_concrete[minecraft:custom_data={EigSigLe.2Alle:true}] 64

# Der Chunk wird dauerhaft geladen.
forceload add ~ ~
