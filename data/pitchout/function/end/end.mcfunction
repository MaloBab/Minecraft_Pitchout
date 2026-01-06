tp @a[team=!hub] 300 48.2 100
team join hub @a
tag @a[team=hub] remove mort
tag @a[team=hub] remove victoire
function pitchout:end/reset/reset_on_hub
clear @a[team=hub]
scoreboard players set $globalTimer po.tech 0
scoreboard players set $gameState po.main 0