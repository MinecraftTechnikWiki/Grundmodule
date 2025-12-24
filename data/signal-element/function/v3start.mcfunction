# Das Punkte-Ziel wird erstellt.
scoreboard objectives add PZSigEl.3Wert dummy ["Signal-Element.2: ",{text:"Wert der Signale",bold:true}]

# Spielern im Umkreis von 15 Blöcken werden 16 Rüstungsständer mit speziellen Eigenschaften gegeben und ebenfalls werden 64 gelbe Betonblöcke gegeben.
give @a[distance=..15] minecraft:armor_stand[minecraft:entity_data={CustomName:{text:"Signal-Empfänger",color:"red",bold:true},CustomNameVisible:true,NoGravity:true,Small:true,Tags:["EtiSigEl.3Alle","EtiSigEl.3Empfaenger"],id:"minecraft:armor_stand"},minecraft:lore=["Platziere den Rüstungsständer","um einen Empfänger","zu erstellen und wähle","den Rüstungsständer kurz aus,","um ein Signal an den nächsten","Empfänger weiterzuleiten."],minecraft:custom_name={text:"Signal-Geber",color:"yellow",bold:true},minecraft:custom_data={EigSigEl.3Alle:true,EigSigEl.3Signal:true},minecraft:enchantment_glint_override=true] 16

give @a[distance=..15] minecraft:yellow_concrete[minecraft:custom_data={EigSigEl.3Alle:true}] 64

# Der Chunk wird dauerhaft geladen.
forceload add ~ ~
