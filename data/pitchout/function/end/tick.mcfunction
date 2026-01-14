# ===============================================================
# BOUCLE DE FIN (Pendant 10 secondes)
# ===============================================================

# 1. Feux d'artifices
scoreboard players operation $animWinTimer po.tech = $globalTimer po.tech
scoreboard players operation $animWinTimer po.tech %= #30 po.tech

execute as @a[tag=victoire] at @s if score $animWinTimer po.tech matches 29 run summon minecraft:firework_rocket ~ ~2.5 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:1b,colors:[I;11743532],fade_colors:[I;15790320]}]}}}}
execute if entity @a[tag=victoire] if score $globalTimer po.tech matches 100.. run function pitchout:end/reset/main
execute if entity @a[tag=victoire] if score $globalTimer po.tech matches 100.. run function pitchout:end/end