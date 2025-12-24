# Wenn der Auslöser eingetippt und ausgeführt wurde, wird eine Nachricht ausgegeben und der Spieler bekommt die Möglichkeit wieder den Auslöser zu aktivieren.
tellraw @a[scores={PZGrundEl.1Ausl=1..}] ["Grund-Element.1:\n",{text:"Der Auslöser wurde eingetippt und ausgeführt.",color:"dark_purple",bold:true}]
scoreboard players enable @a[scores={PZGrundEl.1Ausl=1..}] PZGrundEl.1Ausl
scoreboard players set @a[scores={PZGrundEl.1Ausl=1..}] PZGrundEl.1Ausl 0
