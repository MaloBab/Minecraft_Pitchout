#po.use.charge

execute as @a[scores={po.use.charge=1..}] run tag @s add chargez
execute as @a[scores={po.use.charge=1..,po.cd.charge=..45}] run effect give @s minecraft:speed 1 18 true
execute at @a[scores={po.use.charge=1..}] run particle minecraft:cloud ~ ~ ~ 0.1 0.4 0.1 0.2 9 force

execute if entity @a[scores={po.use.charge=1..}] run scoreboard players add @a[scores={po.use.charge=1..}] po.cd.charge 1
execute as @a[scores={po.cd.charge=52..}] run scoreboard players set @s po.use.charge 0
execute as @a[scores={po.cd.charge=52..,po.use.charge=0}] run tag @s remove chargez
execute as @a[scores={po.cd.charge=52..,po.use.charge=0}] run scoreboard players set @s po.cd.charge 0

execute at @a[scores={po.cd.charge=1..2}] run execute unless entity @e[type=area_effect_cloud,tag=po.use.charge,distance=..1] run summon area_effect_cloud ~ ~1 ~ {Tags:["po.use.charge"],Duration:50}
execute at @a[tag=chargez] run execute as @e[type=area_effect_cloud,tag=po.use.charge,limit=1,sort=nearest] run tp @s ~ ~1 ~
execute as @e[tag=po.use.charge,type=area_effect_cloud] run execute at @s run data modify entity @s Rotation[0] set from entity @a[tag=chargez,limit=1,sort=nearest] Rotation[0]

execute at @e[tag=po.use.charge,type=area_effect_cloud] run execute as @a[tag=!chargez] run tp @s[distance=..2,tag=!chargez,type=!item,type=!armor_stand,type=!arrow,tag=!mort,type=!minecraft:area_effect_cloud] ^ ^0.2 ^4 facing entity @e[tag=po.use.charge,type=area_effect_cloud,sort=nearest,limit=1] feet
#------------------------------------------------------------------
#bouclier

execute as @a[scores={po.use.protect=1..}] run scoreboard players add @s po.cd.protect 1
execute as @a[scores={po.use.protect=1..,po.cd.protect=1..2}] run item replace entity @s weapon.offhand with minecraft:shield
execute at @a[scores={po.use.protect=1..,po.cd.protect=1..2}] run particle minecraft:flash ~ ~ ~ 0.1 0.4 0.1 0.2 10 force

execute as @a[scores={po.use.protect=1..,po.cd.protect=400..}] run item replace entity @s weapon.offhand with minecraft:air
execute as @a[scores={po.use.protect=1..,po.cd.protect=400..}] run scoreboard players set @s po.use.protect 0
execute as @a[scores={po.cd.protect=400..}] run scoreboard players set @s po.cd.protect 0

#----------------------------------------------------------------------

execute as @e[type=minecraft:area_effect_cloud,tag=RES] run execute store result score @s po.timer.block run data get entity @s Age 1

execute if entity @a[tag=victoire] run data modify entity @e[type=minecraft:area_effect_cloud,tag=RES,limit=1] Age set value 2395
execute at @e[type=minecraft:area_effect_cloud,tag=RES,nbt={Age:2396}] run fill ~ ~ ~ ~ ~2 ~ air replace
execute at @e[type=minecraft:area_effect_cloud,tag=RES] run particle minecraft:electric_spark ~ ~ ~ 3 0.2 3 0.02 10 force
execute at @e[type=minecraft:area_effect_cloud,tag=RES,scores={po.timer.block=2397..}] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:honeycomb_block

#------------------------------------------------------------------------
#autel de resurection

execute if entity @a[scores={po.misc.resu=1..}] run execute at @e[type=minecraft:allay] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2400,Tags:["RES"]}
execute if entity @a[scores={po.misc.resu=1..}] run execute at @e[type=minecraft:area_effect_cloud,tag=RES] run fill ~ ~ ~ ~ ~ ~ minecraft:bedrock keep
execute if entity @a[scores={po.misc.resu=1..}] run execute at @e[type=minecraft:area_effect_cloud,tag=RES] run fill ~ ~1 ~ ~ ~1 ~ minecraft:amethyst_cluster keep
execute if entity @a[scores={po.misc.resu=1..}] run kill @e[type=minecraft:allay]
execute if entity @a[scores={po.misc.resu=1..}] run tag @a[scores={po.misc.resu=1..}] add po.misc.resu
execute if entity @a[scores={po.misc.resu=1..}] run scoreboard players set @a[tag=RESU] po.misc.resu 0

execute if entity @a[tag=mort,tag=RESU,team=chevalier] run execute at @a[gamemode=adventure] run execute as @e[type=minecraft:area_effect_cloud,tag=RES,distance=..6] run tag @s add suppr
execute at @e[type=minecraft:area_effect_cloud,tag=RES,tag=suppr] run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:amethyst_cluster
execute at @e[type=minecraft:area_effect_cloud,tag=RES,tag=suppr] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:bedrock
execute if entity @e[type=minecraft:area_effect_cloud,tag=RES,tag=suppr] run execute as @a[tag=mort,tag=RESU,limit=1,sort=random] run tag @s add RESURECT
kill @e[type=minecraft:area_effect_cloud,tag=RES,tag=suppr,limit=1]
execute as @a[tag=RESURECT,tag=RESU] run tag @s remove mort
execute as @a[tag=RESURECT,tag=RESU] run scoreboard players set @s po.tech.remaining_lives 2
execute as @a[tag=RESURECT,tag=RESU] run gamemode adventure
execute as @a[tag=RESURECT,tag=RESU] run kill @s
execute at @a[tag=RESURECT,tag=RESU] run particle minecraft:happy_villager ~ ~ ~ 1 0.5 1 0.002 15 force
execute as @a[tag=RESURECT,tag=RESU] run tag @s remove po.misc.resu
