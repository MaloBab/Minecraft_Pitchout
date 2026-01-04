execute as @a[scores={fantome=1..}] run scoreboard players add @s Timefant 1
execute as @a[scores={Timefant=1..2}] run gamemode spectator @s
execute at @a[scores={Timefant=1..2}] run particle pitchout:dragon_breath ~ ~ ~ 0.4 0.3 0.4 0.2 16 force
execute as @a[scores={Timefant=200..,fantome=1..}] run gamemode adventure
execute as @a[scores={Timefant=200..,fantome=1..}] run scoreboard players set @s fantome 0
execute as @a[scores={Timefant=200..}] run scoreboard players set @s Timefant 0

execute if entity @a[scores={invocation=1..}] run execute at @a[scores={invocation=0},gamemode=adventure] run summon pitchout:wither_skeleton ~4 ~ ~1 {CustomName:'["",{"text":"Soldat ","bold":true,"color":"gray"},{"text":"Réprouvé","bold":true,"color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Health:10,HandItems:[{id:"pitchout:wooden_shovel",components:{enchantments:{levels:{knockback:9}}},count:1},{}],HandDropChances:[0f,0f]}
execute if entity @a[scores={invocation=1..}] run execute at @a[scores={invocation=0},gamemode=adventure] run summon pitchout:skeleton ~3 ~ ~7 {CustomName:'["",{"text":"Tireur ","bold":true,"color":"gray"},{"text":"Réprouvé","bold":true,"color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Health:10,HandItems:[{id:"pitchout:bow",components:{enchantments:{levels:{punch:9}}},count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{},{},{},{id:leather_helmet,components:{unbreakable:{}},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[scores={invocation=1..}] run execute at @e[type=pitchout:skeleton] run particle pitchout:soul_fire_flame ~ ~ ~ 0.2 0.4 0.2 0.2 20 force
execute if entity @a[scores={invocation=1..}] run execute at @e[type=pitchout:wither_skeleton] run particle pitchout:soul_fire_flame ~ ~ ~ 0.2 0.4 0.2 0.2 20 force
execute as @a[scores={invocation=1..}] run scoreboard players set @s invocation 0


execute as @a[team=necromancien,scores={DetectMort=1..}] run effect give @a[scores={DetectMort=0}] pitchout:blindness 6 1 true
execute as @a[team=necromancien,scores={DetectMort=1..}] run effect give @a[scores={DetectMort=0}] pitchout:slowness 5 1 true
execute as @a[team=necromancien,scores={DetectMort=1..}] run effect give @a[scores={DetectMort=0}] pitchout:glowing 6 1 true
execute as @a[team=necromancien,scores={DetectMort=1..}] run effect give @a[scores={DetectMort=0}] pitchout:darkness 3 1 true