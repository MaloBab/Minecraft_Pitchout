execute at @e[tag=slow] run particle pitchout:composter ~ ~ ~ 1 1 1 0.1 30 force
effect give @e[tag=slow] pitchout:slowness 1 250 true
effect give @e[tag=slow] pitchout:jump_boost 1 150 true
execute at @e[tag=slow] run kill @e[type=pitchout:area_effect_cloud,distance=..3]
tag @e[tag=slow] remove slow

execute at @e[type=pitchout:area_effect_cloud,tag=racines] run particle pitchout:composter ~ ~ ~ 0 0.3 0 0.1 2 force
execute at @e[type=pitchout:area_effect_cloud,tag=racines] run tag @e[type=!pitchout:area_effect_cloud,type=!item,distance=..2,tag=!racine,tag=!mort] add slow


execute as @a[scores={racine=1..}] run scoreboard players add @s timeRac 1

execute as @a[scores={racine=1..}] run tag @s add racine
execute at @a[scores={timeRac=1..41}] run particle pitchout:totem_of_undying ~ ~0.4 ~ 0.1 0 0.1 0.1 5 force
execute as @a[scores={racine=1..,timeRac=1..41}] run summon pitchout:area_effect_cloud 289 42 97 {Duration:390,Tags:["racines"]}

execute if score select map matches 1 run execute as @a[scores={racine=1..,timeRac=41}] run spreadplayers 6.55 12.44 9 50 false @e[type=pitchout:area_effect_cloud,tag=racines]
execute if score select map matches 2 run execute as @a[scores={racine=1..,timeRac=41}] run spreadplayers 587 96 5 30 false @e[type=pitchout:area_effect_cloud,tag=racines]
execute if score select map matches 3 run execute as @a[scores={racine=1..,timeRac=41}] run spreadplayers 1572 108 5 45 false @e[type=pitchout:area_effect_cloud,tag=racines]

execute as @a[scores={racine=1..,timeRac=500..}] run scoreboard players set @s racine 0
execute as @a[scores={timeRac=500..}] run tag @s remove racine
execute as @a[scores={timeRac=500..}] run tag @e remove slow
execute as @a[scores={timeRac=500..}] run kill @e[type=pitchout:area_effect_cloud,tag=racines]
execute as @a[scores={timeRac=500..}] run scoreboard players set @s timeRac 0

#----------------------------------------------------------

#levitation

kill @e[type=pitchout:snowball]
execute if entity @a[team=druide,tag=air] run execute at @a[tag=!air,nbt={active_effects:[{id:"pitchout:levitation"}]}] run particle pitchout:cloud ~ ~ ~ 0 0 0 0.01 4 force

execute as @a[scores={air=1..},gamemode=!creative,tag=!mort] run tag @s add air

execute if entity @a[scores={air=1..}] run effect give @a[tag=!air,tag=!mort] pitchout:levitation 6 0 true
execute as @a[tag=air] run scoreboard players set @s air 0
tag @a[tag=air] remove air
