#affectation des scores
execute as @a[scores={menu=2}] store result score @s achatBat run clear @s minecraft:bricks
execute as @a[scores={menu=2}] store result score @s skull run clear @s minecraft:skeleton_skull
execute as @a[scores={menu=2}] store result score @s cheval run clear @s minecraft:iron_horse_armor
execute as @a[scores={menu=2}] store result score @s encre run clear @s minecraft:glow_ink_sac
execute as @a[scores={menu=2}] store result score @s algue run clear @s minecraft:seagrass
execute as @a[scores={menu=2}] store result score @s fant run clear @s minecraft:nether_star
execute as @a[scores={menu=2}] store result score @s achatMur run clear @s minecraft:slime_ball
execute as @a[scores={menu=2}] store result score @s achatAss run clear @s minecraft:black_dye
execute as @a[scores={menu=2}] store result score @s achatCGG run clear @s minecraft:spectral_arrow
execute as @a[scores={menu=2}] store result score @s achatMM run clear @s minecraft:blaze_powder
execute as @a[scores={menu=2}] store result score @s achatInge run clear @s minecraft:tripwire_hook

#---------------------------------------------------------------
#achat necro

execute as @a[scores={menu=2,skull=1}] run execute unless entity @s[scores={kit=0,coins=150..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,skull=1}] run execute unless entity @s[scores={kit=0,coins=150..}] run scoreboard players set @s skull 0


execute as @a[scores={menu=2,skull=1}] run execute if entity @s[scores={kit=0,coins=150..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,skull=1}] run execute if entity @s[scores={kit=0,coins=150..}] run tag @s add achat
execute as @a[scores={menu=2,skull=1}] run execute if entity @s[scores={kit=0,coins=150..},tag=achat] run scoreboard players set @s kit 1
execute as @a[scores={menu=2,skull=1}] run execute if entity @s[scores={kit=1,coins=150..},tag=achat] run scoreboard players remove @s coins 150
execute as @a[scores={menu=2,skull=1}] run execute if entity @s[scores={kit=1},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,skull=1}] run scoreboard players set @a[scores={skull=1,kit=1}] skull 0

#---------------------------------------------------------------
#achat chevalier

execute as @a[scores={menu=2,cheval=1}] run execute unless entity @s[scores={kit=1,coins=250..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,cheval=1}] run execute unless entity @s[scores={kit=1,coins=250..}] run scoreboard players set @s cheval 0


execute as @a[scores={menu=2,cheval=1}] run execute if entity @s[scores={kit=1,coins=250..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,cheval=1}] run execute if entity @s[scores={kit=1,coins=250..}] run tag @s add achat
execute as @a[scores={menu=2,cheval=1}] run execute if entity @s[scores={kit=1,coins=250..},tag=achat] run scoreboard players set @s kit 2
execute as @a[scores={menu=2,cheval=1}] run execute if entity @s[scores={kit=2,coins=250..},tag=achat] run scoreboard players remove @s coins 250
execute as @a[scores={menu=2,cheval=1}] run execute if entity @s[scores={kit=2},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,cheval=1}] run scoreboard players set @a[scores={cheval=1,kit=2}] encre 0

#---------------------------------------------------------------
#achat chaman

execute as @a[scores={menu=2,encre=1}] run execute unless entity @s[scores={kit=2,coins=400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,encre=1}] run execute unless entity @s[scores={kit=2,coins=400..}] run scoreboard players set @s encre 0


execute as @a[scores={menu=2,encre=1}] run execute if entity @s[scores={kit=2,coins=400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,encre=1}] run execute if entity @s[scores={kit=2,coins=400..}] run tag @s add achat
execute as @a[scores={menu=2,encre=1}] run execute if entity @s[scores={kit=2,coins=400..},tag=achat] run scoreboard players set @s kit 3
execute as @a[scores={menu=2,encre=1}] run execute if entity @s[scores={kit=3,coins=400..},tag=achat] run scoreboard players remove @s coins 400
execute as @a[scores={menu=2,encre=1}] run execute if entity @s[scores={kit=3},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,encre=1}] run scoreboard players set @a[scores={encre=1,kit=4}] encre 0

#---------------------------------------------------------------
#achat druide

execute as @a[scores={menu=2,algue=1}] run execute unless entity @s[scores={kit=3,coins=500..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,algue=1}] run execute unless entity @s[scores={kit=3,coins=500..}] run scoreboard players set @s algue 0


execute as @a[scores={menu=2,algue=1}] run execute if entity @s[scores={kit=3,coins=500..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,algue=1}] run execute if entity @s[scores={kit=3,coins=500..}] run tag @s add achat
execute as @a[scores={menu=2,algue=1}] run execute if entity @s[scores={kit=3,coins=500..},tag=achat] run scoreboard players set @s kit 4
execute as @a[scores={menu=2,algue=1}] run execute if entity @s[scores={kit=4,coins=500..},tag=achat] run scoreboard players remove @s coins 500
execute as @a[scores={menu=2,algue=1}] run execute if entity @s[scores={kit=4},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,algue=1}] run scoreboard players set @a[scores={algue=1,kit=4}] algue 0

#---------------------------------------------------------------
#achat fantome

execute as @a[scores={menu=2,fant=1}] run execute unless entity @s[scores={kit=4,coins=700..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,fant=1}] run execute unless entity @s[scores={kit=4,coins=700..}] run scoreboard players set @s fant 0


execute as @a[scores={menu=2,fant=1}] run execute if entity @s[scores={kit=4,coins=700..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,fant=1}] run execute if entity @s[scores={kit=4,coins=700..}] run tag @s add achat
execute as @a[scores={menu=2,fant=1}] run execute if entity @s[scores={kit=4,coins=700..},tag=achat] run scoreboard players set @s kit 5
execute as @a[scores={menu=2,fant=1}] run execute if entity @s[scores={kit=5,coins=700..},tag=achat] run scoreboard players remove @s coins 700
execute as @a[scores={menu=2,fant=1}] run execute if entity @s[scores={kit=5},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,fant=1}] run scoreboard players set @a[scores={fant=1,kit=5}] fant 0

#---------------------------------------------------------------
#achat murloc

execute as @a[scores={menu=2,achatMur=1}] run execute unless entity @s[scores={kit=5,coins=775..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,achatMur=1}] run execute unless entity @s[scores={kit=5,coins=775..}] run scoreboard players set @s achatMur 0


execute as @a[scores={menu=2,achatMur=1}] run execute if entity @s[scores={kit=5,coins=775..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,achatMur=1}] run execute if entity @s[scores={kit=5,coins=775..}] run tag @s add achat
execute as @a[scores={menu=2,achatMur=1}] run execute if entity @s[scores={kit=5,coins=775..},tag=achat] run scoreboard players set @s kit 6
execute as @a[scores={menu=2,achatMur=1}] run execute if entity @s[scores={kit=6,coins=775..},tag=achat] run scoreboard players remove @s coins 775
execute as @a[scores={menu=2,achatMur=1}] run execute if entity @s[scores={kit=6},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,achatMur=1}] run scoreboard players set @a[scores={achatMur=1,kit=6}] achatMur 0

#---------------------------------------------------------------
#achat batisseur

execute as @a[scores={menu=2,achatBat=1}] run execute unless entity @s[scores={kit=6,coins=850..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,achatBat=1}] run execute unless entity @s[scores={kit=6,coins=850..}] run scoreboard players set @s achatBat 0


execute as @a[scores={menu=2,achatBat=1}] run execute if entity @s[scores={kit=6,coins=850..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,achatBat=1}] run execute if entity @s[scores={kit=6,coins=850..}] run tag @s add achat
execute as @a[scores={menu=2,achatBat=1}] run execute if entity @s[scores={kit=6,coins=850..},tag=achat] run scoreboard players set @s kit 7
execute as @a[scores={menu=2,achatBat=1}] run execute if entity @s[scores={kit=7,coins=850..},tag=achat] run scoreboard players remove @s coins 850
execute as @a[scores={menu=2,achatBat=1}] run execute if entity @s[scores={kit=7},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,achatBat=1}] run scoreboard players set @a[scores={achatBat=1,kit=7}] achatBat 0
#---------------------------------------------------------------
#achat assassin

execute as @a[scores={menu=2,achatAss=1}] run execute unless entity @s[scores={kit=7,coins=875..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,achatAss=1}] run execute unless entity @s[scores={kit=7,coins=875..}] run scoreboard players set @s achatAss 0


execute as @a[scores={menu=2,achatAss=1}] run execute if entity @s[scores={kit=7,coins=875..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,achatAss=1}] run execute if entity @s[scores={kit=7,coins=875..}] run tag @s add achat
execute as @a[scores={menu=2,achatAss=1}] run execute if entity @s[scores={kit=7,coins=875..},tag=achat] run scoreboard players set @s kit 8
execute as @a[scores={menu=2,achatAss=1}] run execute if entity @s[scores={kit=8,coins=875..},tag=achat] run scoreboard players remove @s coins 875
execute as @a[scores={menu=2,achatAss=1}] run execute if entity @s[scores={kit=8},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,achatAss=1}] run scoreboard players set @a[scores={achatAss=1,kit=8}] achatAss 0

#---------------------------------------------------------------
#achat chasseur

execute as @a[scores={menu=2,achatCGG=1}] run execute unless entity @s[scores={kit=8,coins=1000..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,achatCGG=1}] run execute unless entity @s[scores={kit=8,coins=1000..}] run scoreboard players set @s achatCGG 0


execute as @a[scores={menu=2,achatCGG=1}] run execute if entity @s[scores={kit=8,coins=1000..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,achatCGG=1}] run execute if entity @s[scores={kit=8,coins=1000..}] run tag @s add achat
execute as @a[scores={menu=2,achatCGG=1}] run execute if entity @s[scores={kit=8,coins=1000..},tag=achat] run scoreboard players set @s kit 9
execute as @a[scores={menu=2,achatCGG=1}] run execute if entity @s[scores={kit=9,coins=1000..},tag=achat] run scoreboard players remove @s coins 1000
execute as @a[scores={menu=2,achatCGG=1}] run execute if entity @s[scores={kit=9},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,achatCGG=1}] run scoreboard players set @a[scores={achatCGG=1,kit=9}] achatCGG 0

#---------------------------------------------------------------
#achat Maitre Mirroir

execute as @a[scores={menu=2,achatMM=1}] run execute unless entity @s[scores={kit=9,coins=1400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,achatMM=1}] run execute unless entity @s[scores={kit=9,coins=1400..}] run scoreboard players set @s achatMM 0


execute as @a[scores={menu=2,achatMM=1}] run execute if entity @s[scores={kit=9,coins=1400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,achatMM=1}] run execute if entity @s[scores={kit=9,coins=1400..}] run tag @s add achat
execute as @a[scores={menu=2,achatMM=1}] run execute if entity @s[scores={kit=9,coins=1400..},tag=achat] run scoreboard players set @s kit 10
execute as @a[scores={menu=2,achatMM=1}] run execute if entity @s[scores={kit=10,coins=1400..},tag=achat] run scoreboard players remove @s coins 1400
execute as @a[scores={menu=2,achatMM=1}] run execute if entity @s[scores={kit=10},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,achatMM=1}] run scoreboard players set @a[scores={achatMM=1,kit=10}] achatMM 0

#---------------------------------------------------------------
#achat Ingenieur

execute as @a[scores={menu=2,achatInge=1}] run execute unless entity @s[scores={kit=10,coins=1600..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={menu=2,achatInge=1}] run execute unless entity @s[scores={kit=10,coins=1600..}] run scoreboard players set @s achatInge 0


execute as @a[scores={menu=2,achatInge=1}] run execute if entity @s[scores={kit=10,coins=1600..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={menu=2,achatInge=1}] run execute if entity @s[scores={kit=10,coins=1600..}] run tag @s add achat
execute as @a[scores={menu=2,achatInge=1}] run execute if entity @s[scores={kit=10,coins=1600..},tag=achat] run scoreboard players set @s kit 11
execute as @a[scores={menu=2,achatInge=1}] run execute if entity @s[scores={kit=11,coins=1600..},tag=achat] run scoreboard players remove @s coins 1600
execute as @a[scores={menu=2,achatInge=1}] run execute if entity @s[scores={kit=11},tag=achat] run tag @s remove achat
execute as @a[scores={menu=2,achatInge=1}] run scoreboard players set @a[scores={achatInge=1,kit=11}] achatInge 0

#---------------------------------------------------------------