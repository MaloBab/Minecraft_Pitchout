execute at @e[tag=slow] run particle minecraft:composter ~ ~ ~ 1 1 1 0.1 30 force
effect give @e[tag=slow] minecraft:slowness 1 250 true
effect give @e[tag=slow] minecraft:jump_boost 1 150 true
execute at @e[tag=slow] run kill @e[type=minecraft:area_effect_cloud,distance=..3]
tag @e[tag=slow] remove slow

execute at @e[type=minecraft:area_effect_cloud,tag=racines] run particle minecraft:composter ~ ~ ~ 0 0.3 0 0.1 2 force
execute at @e[type=minecraft:area_effect_cloud,tag=racines] run tag @e[type=!minecraft:area_effect_cloud,type=!item,distance=..2,tag=!po.use.racine,tag=!mort] add slow


execute as @a[scores={po.use.racine=1..}] run scoreboard players add @s po.cd.racine 1

execute as @a[scores={po.use.racine=1..}] run tag @s add po.use.racine
execute at @a[scores={po.cd.racine=1..41}] run particle minecraft:totem_of_undying ~ ~0.4 ~ 0.1 0 0.1 0.1 5 force
execute as @a[scores={po.use.racine=1..,po.cd.racine=1..41}] run summon minecraft:area_effect_cloud 289 42 97 {Duration:390,Tags:["racines"]}

execute if score select po.map.vote_id matches 1 run execute as @a[scores={po.use.racine=1..,po.cd.racine=41}] run spreadplayers 6.55 12.44 9 50 false @e[type=minecraft:area_effect_cloud,tag=racines]
execute if score select po.map.vote_id matches 2 run execute as @a[scores={po.use.racine=1..,po.cd.racine=41}] run spreadplayers 587 96 6 30 false @e[type=minecraft:area_effect_cloud,tag=racines]
execute if score select po.map.vote_id matches 3 run execute as @a[scores={po.use.racine=1..,po.cd.racine=41}] run spreadplayers 1572 108 6 65 false @e[type=minecraft:area_effect_cloud,tag=racines]
execute if score select po.map.vote_id matches 4 run execute as @a[scores={po.use.racine=1..,po.cd.racine=41}] run spreadplayers 459 -304 6 75 false @e[type=minecraft:area_effect_cloud,tag=racines]

execute as @a[scores={po.use.racine=1..,po.cd.racine=500..}] run scoreboard players set @s po.use.racine 0
execute as @a[scores={po.cd.racine=500..}] run tag @s remove po.use.racine
execute as @a[scores={po.cd.racine=500..}] run tag @e remove slow
execute as @a[scores={po.cd.racine=500..}] run kill @e[type=minecraft:area_effect_cloud,tag=racines]
execute as @a[scores={po.cd.racine=500..}] run scoreboard players set @s po.cd.racine 0

#----------------------------------------------------------

#levitation

kill @e[type=minecraft:snowball]
execute if entity @a[team=druide,tag=air] run execute at @a[tag=!air,nbt={active_effects:[{id:"minecraft:levitation"}]}] run particle minecraft:cloud ~ ~ ~ 0 0 0 0.01 4 force

execute as @a[scores={po.use.air=1..},gamemode=!creative,tag=!mort] run tag @s add air

execute if entity @a[scores={po.use.air=1..}] run effect give @a[tag=!air,tag=!mort] minecraft:levitation 6 0 true
execute as @a[tag=air] run scoreboard players set @s po.use.air 0
tag @a[tag=air] remove air
