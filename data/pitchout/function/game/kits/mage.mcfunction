#fruits des dieux

execute as @a[team=mage,scores={po.use.levitation=1..}] run scoreboard players add @s po.legacy.creeper 1
execute if entity @a[scores={po.legacy.creeper=1..}] run summon minecraft:creeper 300 41 110 {NoAI:1b,Invulnerable:1b,ExplosionRadius:12,Fuse:30,ignited:1b,active_effects:[{id:"minecraft:levitation",amplifier:3,duration:100}]}

execute if score select po.map.vote_id matches 1 run execute as @a[scores={po.use.levitation=1..},limit=1] run execute if score @s po.legacy.creeper matches 20.. run spreadplayers 6.55 12.44 0 80 false @e[type=minecraft:creeper]
execute if score select po.map.vote_id matches 2 run execute as @a[scores={po.use.levitation=1..},limit=1] run execute if score @s po.legacy.creeper matches 20.. run spreadplayers 587 96 5 80 false @e[type=minecraft:creeper]
execute if score select po.map.vote_id matches 3 run execute as @a[scores={po.use.levitation=1..},limit=1] run execute if score @s po.legacy.creeper matches 20.. run spreadplayers 1572 108 0 120 false @e[type=minecraft:creeper]
execute if score select po.map.vote_id matches 4 run execute as @a[scores={po.use.levitation=1..},limit=1] run execute if score @s po.legacy.creeper matches 20.. run spreadplayers 465 -297 0 120 false @e[type=minecraft:creeper]

execute as @a[scores={po.use.levitation=1..},limit=1] run execute if score @s po.legacy.creeper matches 41.. run scoreboard players set @s po.use.levitation 0
execute as @a[scores={po.legacy.creeper=41..}] run scoreboard players set @s po.legacy.creeper 0

#------------------------------------------------------------------------

#artefacts


execute as @a[team=mage,scores={po.stat.sneak=1..}] run scoreboard players set @s po.stat.sneak 1
execute as @a[team=mage,scores={po.misc.grav=0}] run scoreboard players set @s po.stat.sneak 0

#faire s'envoler un autre joueur
execute as @a[scores={po.misc.grav=1..,po.stat.sneak=..0}] run tag @a[scores={po.misc.grav=0},limit=1,sort=nearest] add po.misc.grav
execute if entity @a[scores={po.misc.grav=1..}] run execute as @a[tag=po.misc.grav,scores={po.misc.grav=0}] run effect give @s levitation 1 120 true


#se faire s'envoler
execute as @a[scores={po.misc.grav=1..,po.stat.sneak=1..}] run tag @s add po.misc.grav
execute if entity @a[scores={po.misc.grav=1..}] run execute as @a[tag=po.misc.grav] run effect give @s levitation 1 120 true
execute as @a[scores={po.misc.grav=1..}] run scoreboard players set @s po.misc.grav 0
execute as @a[tag=po.misc.grav] run tag @s remove po.misc.grav

#-------------------------------------------------------------------------

#chaines de la domination

execute as @a[scores={po.use.flint=1..}] run execute at @s run effect give @a[limit=1,sort=furthest,team=!hub,gamemode=!spectator] minecraft:slowness 3 50 true
execute as @a[scores={po.use.flint=1..}] run execute at @s run effect give @a[limit=1,sort=furthest,team=!hub,gamemode=!spectator] minecraft:jump_boost 3 200 true
execute as @a[scores={po.use.flint=1..}] run execute at @s run execute at @a[limit=1,sort=furthest,team=!hub,gamemode=!spectator] run particle minecraft:witch ~ ~ ~ 0.9 2 0.9 0.01 300 force
execute as @a[scores={po.use.flint=1..}] run scoreboard players set @s po.use.flint 0