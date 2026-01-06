tp @a[team=!hub] 300 48.2 100
team join hub @a
function pitchout:end/reset/reset_on_hub
clear @a[team=hub]
scoreboard players set $gameState po.main 0
scoreboard players set $globalTimer po.tech 0