execute as @a[scores={po.use.phantom=1..}] run scoreboard players add @s po.cd.fantome 1
execute as @a[scores={po.cd.fantome=1..2}] run gamemode spectator @s
execute at @a[scores={po.cd.fantome=1..2}] run particle minecraft:dragon_breath ~ ~ ~ 0.4 0.3 0.4 0.2 16 force
execute as @a[scores={po.cd.fantome=100..,po.use.phantom=1..}] run gamemode adventure
execute as @a[scores={po.cd.fantome=100..,po.use.phantom=1..}] run scoreboard players set @s po.use.phantom 0
execute as @a[scores={po.cd.fantome=100..}] run scoreboard players set @s po.cd.fantome 0

execute if entity @a[scores={po.misc.invocation=1..}] run execute at @a[scores={po.misc.invocation=0},gamemode=adventure] run summon minecraft:wither_skeleton ~4 ~ ~1 {CustomName:'["",{"text":"Soldat ","bold":true,"color":"gray"},{"text":"Réprouvé","bold":true,"color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Health:10,HandItems:[{id:"minecraft:wooden_shovel",components:{enchantments:{levels:{knockback:9}}},count:1},{}],HandDropChances:[0f,0f]}
execute if entity @a[scores={po.misc.invocation=1..}] run execute at @a[scores={po.misc.invocation=0},gamemode=adventure] run summon minecraft:skeleton ~3 ~ ~7 {CustomName:'["",{"text":"Tireur ","bold":true,"color":"gray"},{"text":"Réprouvé","bold":true,"color":"dark_red"}]',CustomNameVisible:1b,PersistenceRequired:1b,Glowing:1b,Health:10,HandItems:[{id:"minecraft:bow",components:{enchantments:{levels:{punch:9}}},count:1},{}],HandDropChances:[0f,0f],ArmorItems:[{},{},{},{id:leather_helmet,components:{unbreakable:{}},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[scores={po.misc.invocation=1..}] run execute at @e[type=minecraft:skeleton] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.4 0.2 0.2 20 force
execute if entity @a[scores={po.misc.invocation=1..}] run execute at @e[type=minecraft:wither_skeleton] run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.4 0.2 0.2 20 force
execute as @a[scores={po.misc.invocation=1..}] run scoreboard players set @s po.misc.invocation 0