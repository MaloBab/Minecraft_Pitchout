#----------------------------------------------RANGER-------------------------------------------

#detection sauvetage enderpearl
execute as @a[team=ranger,scores={enderVoid=0,couche=..17}] run execute at @s run execute if block ~ ~-1 ~ air run execute if block ~ ~-2 ~ air run execute if block ~ ~-3 ~ air run scoreboard players set @s enderVoid 1
execute as @a[scores={lancer=1..,enderVoid=1}] run execute at @s run execute unless block ~ ~-1 ~ air run scoreboard players set @s enderVoid 2
execute as @a[scores={lancer=1..,enderVoid=2}] run scoreboard players add @s sauvetage 1
execute at @a[scores={lancerInstant=1..,equipEnderSon=1}] run execute as @a[distance=..10] run playsound pitchout:1ender block @s
execute as @a[scores={lancerInstant=1..}] run scoreboard players set @s lancerInstant 0
execute as @a[scores={enderVoid=1..,DetectMort=1..}] run scoreboard players set @s lancer 0
execute as @a[scores={lancer=1..,enderVoid=2}] run scoreboard players set @s lancer 0
execute as @a[scores={lancer=1..,enderVoid=0}] run execute unless entity @e[type=ender_pearl] run scoreboard players set @s lancer 0
execute as @a[scores={lancer=0,enderVoid=1..}] run execute at @s run execute unless block ~ ~-1 ~ air run scoreboard players set @s enderVoid 0
#achievement déclanché à 150 sauvetages

#--------------------------------------------------------------------------------------------

#Cowboy !
execute as @a[scores={fishing=0},tag=grap] run scoreboard players add @s grapRanger 1
execute as @a[scores={fishing=0},tag=grap] run tag @s remove grap

#--------------------------------------------------------------------------------------------

#Du danger ? Quel danger ?

execute if score timer victoire matches 29 run execute as @a[tag=victoire,team=ranger,scores={enderpearlPartie=0}] run scoreboard players add @s advDudanger 1

#--------------------------------------------------------------------------------------------
#Teleportation !
#mettre le score enderpearlGlobal au nombre souhaité

#--------------------------------------------------------------------------------------------

#Barroud d'honneur
# cf "minecraft:pitchout/kits/ranger"

#-------------------------------------------------------------------------------------------------------

