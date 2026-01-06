#----------------------------------------------RANGER-------------------------------------------

#detection sauvetage enderpearl
execute as @a[team=ranger,scores={po.tech.void_pearl=0,po.tech.layer=..17}] run execute at @s run execute if block ~ ~-1 ~ air run execute if block ~ ~-2 ~ air run execute if block ~ ~-3 ~ air run scoreboard players set @s po.tech.void_pearl 1
execute as @a[scores={po.use.ender_pearl=1..,po.tech.void_pearl=1}] run execute at @s run execute unless block ~ ~-1 ~ air run scoreboard players set @s po.tech.void_pearl 2
execute as @a[scores={po.use.ender_pearl=1..,po.tech.void_pearl=2}] run scoreboard players add @s po.tech.save 1
execute at @a[scores={po.misc.lancerinstant=1..,po.cos.sound.equipender=1}] run execute as @a[distance=..10] run playsound pitchout:1ender block @s
execute as @a[scores={po.misc.lancerinstant=1..}] run scoreboard players set @s po.misc.lancerinstant 0
execute as @a[scores={po.tech.void_pearl=1..,po.legacy.detectmort=1..}] run scoreboard players set @s po.use.ender_pearl 0
execute as @a[scores={po.use.ender_pearl=1..,po.tech.void_pearl=2}] run scoreboard players set @s po.use.ender_pearl 0
execute as @a[scores={po.use.ender_pearl=1..,po.tech.void_pearl=0}] run execute unless entity @e[type=ender_pearl] run scoreboard players set @s po.use.ender_pearl 0
execute as @a[scores={po.use.ender_pearl=0,po.tech.void_pearl=1..}] run execute at @s run execute unless block ~ ~-1 ~ air run scoreboard players set @s po.tech.void_pearl 0
#achievement déclanché à 150 sauvetages

#--------------------------------------------------------------------------------------------

#Cowboy !
execute as @a[scores={po.use.rod=0},tag=grap] run scoreboard players add @s po.legacy.grapranger 1
execute as @a[scores={po.use.rod=0},tag=grap] run tag @s remove grap

#--------------------------------------------------------------------------------------------

#Du danger ? Quel danger ?

execute if score $gameState po.main matches 2 if score $globalTimer po.tech matches 2 as @a[tag=victoire,team=ranger,scores={po.use.pearl_game=0, po.tech.remaining_lives=5}] run scoreboard players add @s po.adv.dudanger 1

#--------------------------------------------------------------------------------------------
#Teleportation !
#mettre le score enderpearlGlobal au nombre souhaité

#--------------------------------------------------------------------------------------------

#Barroud d'honneur
# cf "pitchout:pitchout/kits/ranger"

#-------------------------------------------------------------------------------------------------------

