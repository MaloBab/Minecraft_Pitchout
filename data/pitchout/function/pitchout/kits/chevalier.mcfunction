#charge

execute as @a[scores={charge=1..}] run tag @s add chargez
execute as @a[scores={charge=1..,timeCharge=..45}] run effect give @s pitchout:speed 1 18 true
execute at @a[scores={charge=1..}] run particle pitchout:cloud ~ ~ ~ 0.1 0.4 0.1 0.2 9 force

execute if entity @a[scores={charge=1..}] run scoreboard players add @a[scores={charge=1..}] timeCharge 1
execute as @a[scores={timeCharge=52..}] run scoreboard players set @s charge 0
execute as @a[scores={timeCharge=52..,charge=0}] run tag @s remove chargez
execute as @a[scores={timeCharge=52..,charge=0}] run scoreboard players set @s timeCharge 0

execute at @a[scores={timeCharge=1..2}] run execute unless entity @e[type=area_effect_cloud,tag=CHARGE,distance=..1] run summon area_effect_cloud ~ ~1 ~ {Tags:["CHARGE"],Duration:50}
execute at @a[tag=chargez] run execute as @e[type=area_effect_cloud,tag=CHARGE,limit=1,sort=nearest] run tp @s ~ ~1 ~
execute as @e[tag=CHARGE,type=area_effect_cloud] run execute at @s run data modify entity @s Rotation[0] set from entity @a[tag=chargez,limit=1,sort=nearest] Rotation[0]

execute at @e[tag=CHARGE,type=area_effect_cloud] run execute as @a[tag=!chargez] run tp @s[distance=..2,tag=!chargez,type=!item,type=!armor_stand,type=!arrow,tag=!mort,type=!pitchout:area_effect_cloud] ^ ^0.2 ^4 facing entity @e[tag=CHARGE,type=area_effect_cloud,sort=nearest,limit=1] feet
#------------------------------------------------------------------
#bouclier

execute as @a[scores={protect=1..}] run scoreboard players add @s timeProtect 1
execute as @a[scores={protect=1..,timeProtect=1..2}] run item replace entity @s weapon.offhand with pitchout:shield
execute at @a[scores={protect=1..,timeProtect=1..2}] run particle pitchout:flash ~ ~ ~ 0.1 0.4 0.1 0.2 10 force

execute as @a[scores={protect=1..,timeProtect=400..}] run item replace entity @s weapon.offhand with pitchout:air
execute as @a[scores={protect=1..,timeProtect=400..}] run scoreboard players set @s protect 0
execute as @a[scores={timeProtect=400..}] run scoreboard players set @s timeProtect 0

#----------------------------------------------------------------------

execute as @e[type=pitchout:area_effect_cloud,tag=RES] run execute store result score @s timeBlock run data get entity @s Age 1

execute if entity @a[tag=victoire] run data modify entity @e[type=pitchout:area_effect_cloud,tag=RES,limit=1] Age set value 2395
execute at @e[type=pitchout:area_effect_cloud,tag=RES,nbt={Age:2396}] run fill ~ ~ ~ ~ ~2 ~ air replace
execute at @e[type=pitchout:area_effect_cloud,tag=RES] run particle pitchout:electric_spark ~ ~ ~ 3 0.2 3 0.02 10 force
execute at @e[type=pitchout:area_effect_cloud,tag=RES,scores={timeBlock=2397..}] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:honeycomb_block

#------------------------------------------------------------------------
#autel de resurection

execute if entity @a[scores={resu=1..}] run execute at @e[type=pitchout:allay] run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:2400,Tags:["RES"]}
execute if entity @a[scores={resu=1..}] run execute at @e[type=pitchout:area_effect_cloud,tag=RES] run fill ~ ~ ~ ~ ~ ~ pitchout:bedrock keep
execute if entity @a[scores={resu=1..}] run execute at @e[type=pitchout:area_effect_cloud,tag=RES] run fill ~ ~1 ~ ~ ~1 ~ pitchout:amethyst_cluster keep
execute if entity @a[scores={resu=1..}] run kill @e[type=pitchout:allay]
execute if entity @a[scores={resu=1..}] run tag @a[scores={resu=1..}] add RESU
execute if entity @a[scores={resu=1..}] run scoreboard players set @a[tag=RESU] resu 0

execute if entity @a[tag=mort,tag=RESU,team=chevalier] run execute at @a[gamemode=adventure] run execute as @e[type=pitchout:area_effect_cloud,tag=RES,distance=..6] run tag @s add suppr
execute at @e[type=pitchout:area_effect_cloud,tag=RES,tag=suppr] run fill ~ ~1 ~ ~ ~1 ~ air replace pitchout:amethyst_cluster
execute at @e[type=pitchout:area_effect_cloud,tag=RES,tag=suppr] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:bedrock
execute if entity @e[type=pitchout:area_effect_cloud,tag=RES,tag=suppr] run execute as @a[tag=mort,tag=RESU,limit=1,sort=random] run tag @s add RESURECT
kill @e[type=pitchout:area_effect_cloud,tag=RES,tag=suppr,limit=1]
execute as @a[tag=RESURECT,tag=RESU] run tag @s remove mort
execute as @a[tag=RESURECT,tag=RESU] run scoreboard players set @s vie 2
execute as @a[tag=RESURECT,tag=RESU] run gamemode adventure
execute as @a[tag=RESURECT,tag=RESU] run kill @s
execute at @a[tag=RESURECT,tag=RESU] run particle pitchout:happy_villager ~ ~ ~ 1 0.5 1 0.002 15 force
execute as @a[tag=RESURECT,tag=RESU] run tag @s remove RESU
