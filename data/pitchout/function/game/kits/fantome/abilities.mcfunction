#desorientation

execute as @a[scores={po.use.control=1..}] run scoreboard players set @s po.cd.cont 1
execute as @a[scores={po.use.control=1..}] run effect give @a[scores={po.use.control=0}] minecraft:darkness 15 2 true
execute as @a[scores={po.use.control=1..}] run scoreboard players set @s po.use.control 0

execute as @a[scores={po.cd.cont=1..}] run scoreboard players add @s po.cd.cont 1
execute as @a[scores={po.cd.cont=1..}] run item replace entity @a[scores={po.cd.cont=0}] armor.head with minecraft:carved_pumpkin

execute as @a[scores={po.cd.cont=140..}] run item replace entity @a armor.head with air
execute as @a[scores={po.cd.cont=140..}] run scoreboard players set @s po.cd.cont 0

#---------------------------------------------------
#appel des mauvais esprits
#execute as @a[scores={hunt=1}] run tag @r[tag=!mort,team=!hub,scores={hunt=0}] add hunt
#execute as @a[scores={hunt=1}] run tellraw @a[team=!hub] ["",{"text":"A ","bold":true,"obfuscated":true,"color":"dark_red"},{"selector":"@a[tag=hunt,limit=1]"},{"text":" sera hanter","color":"light_purple"},{"text":" dans "},{"text":"3 secondes !","color":"gold"}]
#execute as @a[scores={hunt=1..}] run scoreboard players set @s hunt 0
#execute as @a[tag=hunt] run scoreboard players add @s timeHunt 1
#execute as @a[tag=hunt,scores={timeHunt=60..}] at @s run particle soul ~ ~ ~ 0.2 0.5 0.2 2 5 force @a
#execute as @a[tag=hunt,scores={timeHunt=60..,DetectMort=1..,timer=2}] run scoreboard players remove @s vie 1
#execute as @a[tag=hunt,scores={timeHunt=60..,DetectMort=1..,timer=3}] run tag @s remove hunt
#execute as @a[scores={timeHunt=60..,DetectMort=1..,timer=3}] run scoreboard players set @s timeHunt 0
#execute as @a[tag=hunt,scores={timeHunt=260..}] run tag @s remove hunt
#execute as @a[scores={timeHunt=260..}] run scoreboard players set @s timeHunt 0
#execute as @a[team=hub,tag=hunt] run tag @s remove hunt
#execute as @a[team=hub,scores={timeHunt=260..}] run scoreboard players set @s timeHunt 0
#TODO
#---------------------------------------------------
#intangibiite

kill @e[type=minecraft:experience_bottle]

execute as @a[scores={po.use.intangible=1..}] run scoreboard players add @s po.use.intangible 1
execute at @a[scores={po.use.intangible=2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:84,Tags:["Inverse"]}
execute as @a[scores={po.use.intangible=2}] run gamemode spectator @s
execute as @a[scores={po.use.intangible=80..}] run gamemode adventure @s
execute as @a[scores={po.use.intangible=80..}] run execute at @e[type=minecraft:area_effect_cloud,tag=Inverse] run execute unless entity @a[tag=inverse] run tp @s ~ ~ ~

execute at @a[scores={po.use.intangible=1..}] run execute as @e[scores={po.use.intangible=0},distance=0..1,limit=1] run tag @s add inverse
execute at @e[tag=inverse] run gamemode adventure @a[scores={po.use.intangible=1..},distance=0..2]
execute as @e[tag=inverse] run tp @s @e[type=area_effect_cloud,tag=Inverse,sort=arbitrary,limit=1]
execute if entity @a[scores={po.use.intangible=81..}] run execute as @e[tag=inverse] run tag @s remove inverse
execute as @a[scores={po.use.intangible=81..}] run scoreboard players set @s po.use.intangible 0