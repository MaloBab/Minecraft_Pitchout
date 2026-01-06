execute as @a[team=!hub,distance=..40] run team join hub @s
scoreboard players enable @a[team=hub] play

#---------------------------------------------------------------

execute positioned 300 48 100 as @e[type=chest_minecart,distance=200..] run kill @s

execute unless entity @a[team=!hub] run weather clear 999999d

effect give @a[team=hub] minecraft:resistance 2 9 true
effect give @a[team=hub] minecraft:saturation 1 5 true
effect give @a[team=hub] minecraft:speed 2 0 true

spawnpoint @a[team=hub] 300 48 100
gamemode adventure @a[team=hub,tag=!build]


scoreboard players set @a[team=hub] po.stat.sneak 0
scoreboard players set @a[team=hub] po.tech.water_timer 1
scoreboard players set @a[team=hub] po.use.bell 0

execute unless entity @a[team=!hub] run scoreboard players reset @s po.timer.plan
execute unless entity @a[team=!hub] run scoreboard players set timer po.timer.block 0


execute unless entity @a[scores={po.timer.titre=1..}] run title @a[team=hub] subtitle {"text":""}
execute unless entity @a[scores={po.timer.titre=1..}] run title @a[team=hub] title {"text":""}

#TODO :scoreboard players set timer po.timer.effect 0 UTILE ???
execute unless entity @a[team=!hub] run scoreboard players set timer po.timer.effect 0 
execute unless entity @a[team=!hub] run scoreboard players set timer po.cd.cible 0
#TODO :scoreboard players set timer po.timer.cible 0 UTILE ???


#---------------------------------------------------------------
#gestion connection/deconnection

execute as @a[scores={po.stat.leaves=1..}] run scoreboard players set @s po.stat.play_time 0
execute as @a[scores={po.stat.leaves=1..}] run scoreboard players set @s po.stat.leaves 0
execute as @a[scores={po.stat.play_time=1}] run scoreboard players add @s po.stat.joins 1
execute as @a[scores={po.stat.joins=1}] run execute unless entity @s[scores={po.tech.game_set=1..8}] run scoreboard players set @s po.tech.game_set 1
