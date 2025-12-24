# Es wird ein Punkte-Ziel erstellt.
scoreboard objectives add PZSigLe.3Wert dummy ["Signalleitung.3: ",{text:"Wert der Signale",bold:true}]

# Den Spielern wird ein Stock mit speziellen Eigenschaften gegeben.
give @a[distance=..15] minecraft:stick[minecraft:lore=["Wähle den Stock aus","um unter dir den","Block zu aktivieren."],minecraft:custom_name={text:"Signal",color:"dark_purple",bold:true},minecraft:custom_data={EigSigLe.3Alle:true,EigSigLe.3Stock:true},minecraft:enchantment_glint_override=true]

# Ebenfalls bekommen sie gelben Beton, den sie als Leitung verwenden können.
give @a[distance=..15] minecraft:yellow_concrete[minecraft:custom_data={EigSigLe.3Alle:true}] 64

# Der Chunk wird dauerhaft geladen.
forceload add ~ ~
