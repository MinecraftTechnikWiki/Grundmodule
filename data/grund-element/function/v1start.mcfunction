# Das Punkte-Ziel "PZGrundEl.1Ausl" wird erstellt, um als Auslöser zu arbeiten.
scoreboard objectives add PZGrundEl.1Ausl trigger ["Grund-Element.1: ",{text:"Auslöser",bold:true}]

# Spieler in einem Abstand von bis zu 15 Blöcken werden dafür freigeschaltet den trigger-Befehl einmal auszulösen und erhalten eine Chat-Nachricht.
scoreboard players enable @a[distance=..15] PZGrundEl.1Ausl
tellraw @a[distance=..15] ["Grund-Element.1:\n",{text:"Klicke auf 'Auslöser-Befehl' um einen Befehl in der Chat-Leiste zu erhalten.",color:"gold",bold:true},"\n",{text:"Auslöser-Befehl",color:"yellow",bold:true,underlined:true,click_event:{action:"suggest_command",command:"/trigger PZGrundEl.1Ausl"},hover_event:{action:"show_text",value:{text:"Erhalte den Trigger-Befehl",color:"green"} } } ]
