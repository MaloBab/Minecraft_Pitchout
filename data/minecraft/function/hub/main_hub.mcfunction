execute as @a[team=!hub,distance=..40] run team join hub @s
scoreboard players enable @a[team=hub] play

#---------------------------------------------------------------
#reinitialisation joueurs et arene apres une parite

clear @a[team=hub,tag=finGame]
tag @a[team=hub,tag=finGame] remove finGame

execute positioned 300 48 100 as @e[type=chest_minecart,distance=200..] run kill @s
execute store result score lifetime timeCible run data get entity @e[type=minecraft:area_effect_cloud,tag=Cible,limit=1] Age 1
execute if score lifetime timeCible matches 605 run execute at @e[type=minecraft:area_effect_cloud,tag=Cible] run setblock ~ ~ ~ air replace

effect give @a[team=hub] minecraft:resistance 2 9 true
effect give @a[team=hub] minecraft:saturation 1 5 true
effect give @a[team=hub] minecraft:speed 2 0 true
scoreboard players set @a[team=hub] vie 6
effect clear @a[team=hub,tag=!build]
scoreboard players set @a[team=hub] sneak 0
scoreboard players set @a[team=hub] timeWater 1
scoreboard players set @a[team=hub] glasDivin 0
execute as @a[team=!Chasseur] run scoreboard players set @s comptarba 0 
tag @a[team=hub] remove mort
tag @a[team=hub] remove rmXal
tag @a[team=hub] remove clock
tag @a[team=hub] remove porteurXal
tag @a[team=hub] remove Xal
execute unless entity @a[team=!hub] run scoreboard players reset @s plan
gamemode adventure @a[team=hub,tag=!build]
tag @a[team=hub] remove antiTP
tag @a[team=hub] remove naga
tag @a[team=hub] remove CibleArmee
tag @a[team=hub] remove sneak
execute as @a[tag=victoire] run clear @s
execute unless entity @a[scores={titre=1..}] run title @a[team=hub] subtitle {"text":""}
execute unless entity @a[scores={titre=1..}] run title @a[team=hub] title {"text":""}
execute unless entity @a[team=!hub] run scoreboard players set timer timeEffect 0
execute unless entity @a[team=!hub] run weather clear 999999d
spawnpoint @a[team=hub] 300 48 100
execute unless entity @a[team=!hub] run scoreboard players set timer timeBlock 0
tag @a[team=hub] remove victoire
tag @a[team=hub] remove visionVIE
tag @a[team=hub] remove getVision
tag @a[team=hub] remove totem
tag @a[team=hub] remove racine
tag @a[team=hub] remove slow
tag @a[team=hub] remove air
scoreboard players set @a[team=hub] QTB 16
scoreboard players set @a[team=hub] constru 0
tag @a[team=hub] remove RESU
tag @a[team=hub] remove RESURECT
execute unless entity @a[team=!hub] run scoreboard players set timer timeCible 0
execute unless entity @a[team=!hub] run scoreboard players set lifetime timeCible 600
scoreboard players set @a[team=hub] void 0
tag @a[team=hub] remove util
tag @a[team=hub] remove execute
tag @a[team=hub] remove CibleC
#---------------------------------------------------------------
#gestion connection/deconnection

execute as @a[scores={deco=1..}] run scoreboard players set @s connection 0
execute as @a[scores={deco=1..}] run scoreboard players set @s deco 0
execute as @a[scores={connection=1}] run scoreboard players add @s nbconnection 1
execute as @a[scores={nbconnection=1}] run execute unless entity @s[scores={setGame=1..8}] run scoreboard players set @s setGame 1
