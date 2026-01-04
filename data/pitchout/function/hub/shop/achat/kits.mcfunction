#affectation des scores
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.batisseur run clear @s minecraft:bricks
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.necromancien run clear @s minecraft:skeleton_skull
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.chevalier run clear @s minecraft:iron_horse_armor
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.chaman run clear @s minecraft:glow_ink_sac
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.druide run clear @s minecraft:seagrass
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.fantome run clear @s minecraft:nether_star
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.murloc run clear @s minecraft:slime_ball
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.assassin run clear @s minecraft:black_dye
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.chasseur_gg run clear @s minecraft:spectral_arrow
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.maitre_m run clear @s minecraft:blaze_powder
execute as @a[scores={po.ui.kit_menu=2}] store result score @s po.shop.ingenieur run clear @s minecraft:tripwire_hook

#---------------------------------------------------------------
#achat necro

execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute unless entity @s[scores={po.state.kit_id=0,po.coins=150..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute unless entity @s[scores={po.state.kit_id=0,po.coins=150..}] run scoreboard players set @s po.shop.necromancien 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute if entity @s[scores={po.state.kit_id=0,po.coins=150..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute if entity @s[scores={po.state.kit_id=0,po.coins=150..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute if entity @s[scores={po.state.kit_id=0,po.coins=150..},tag=achat] run scoreboard players set @s po.state.kit_id 1
execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute if entity @s[scores={po.state.kit_id=1,po.coins=150..},tag=achat] run scoreboard players remove @s po.coins 150
execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run execute if entity @s[scores={po.state.kit_id=1},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.necromancien=1}] run scoreboard players set @a[scores={po.shop.necromancien=1,po.state.kit_id=1}] po.shop.necromancien 0

#---------------------------------------------------------------
#achat chevalier

execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute unless entity @s[scores={po.state.kit_id=1,po.coins=250..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute unless entity @s[scores={po.state.kit_id=1,po.coins=250..}] run scoreboard players set @s po.shop.chevalier 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute if entity @s[scores={po.state.kit_id=1,po.coins=250..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute if entity @s[scores={po.state.kit_id=1,po.coins=250..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute if entity @s[scores={po.state.kit_id=1,po.coins=250..},tag=achat] run scoreboard players set @s po.state.kit_id 2
execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute if entity @s[scores={po.state.kit_id=2,po.coins=250..},tag=achat] run scoreboard players remove @s po.coins 250
execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run execute if entity @s[scores={po.state.kit_id=2},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.chevalier=1}] run scoreboard players set @a[scores={po.shop.chevalier=1,po.state.kit_id=2}] po.shop.chaman 0

#---------------------------------------------------------------
#achat chaman

execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute unless entity @s[scores={po.state.kit_id=2,po.coins=400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute unless entity @s[scores={po.state.kit_id=2,po.coins=400..}] run scoreboard players set @s po.shop.chaman 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute if entity @s[scores={po.state.kit_id=2,po.coins=400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute if entity @s[scores={po.state.kit_id=2,po.coins=400..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute if entity @s[scores={po.state.kit_id=2,po.coins=400..},tag=achat] run scoreboard players set @s po.state.kit_id 3
execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute if entity @s[scores={po.state.kit_id=3,po.coins=400..},tag=achat] run scoreboard players remove @s po.coins 400
execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run execute if entity @s[scores={po.state.kit_id=3},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.chaman=1}] run scoreboard players set @a[scores={po.shop.chaman=1,po.state.kit_id=4}] po.shop.chaman 0

#---------------------------------------------------------------
#achat druide

execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute unless entity @s[scores={po.state.kit_id=3,po.coins=500..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute unless entity @s[scores={po.state.kit_id=3,po.coins=500..}] run scoreboard players set @s po.shop.druide 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute if entity @s[scores={po.state.kit_id=3,po.coins=500..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute if entity @s[scores={po.state.kit_id=3,po.coins=500..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute if entity @s[scores={po.state.kit_id=3,po.coins=500..},tag=achat] run scoreboard players set @s po.state.kit_id 4
execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute if entity @s[scores={po.state.kit_id=4,po.coins=500..},tag=achat] run scoreboard players remove @s po.coins 500
execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run execute if entity @s[scores={po.state.kit_id=4},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.druide=1}] run scoreboard players set @a[scores={po.shop.druide=1,po.state.kit_id=4}] po.shop.druide 0

#---------------------------------------------------------------
#achat fantome

execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute unless entity @s[scores={po.state.kit_id=4,po.coins=700..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute unless entity @s[scores={po.state.kit_id=4,po.coins=700..}] run scoreboard players set @s po.shop.fantome 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute if entity @s[scores={po.state.kit_id=4,po.coins=700..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute if entity @s[scores={po.state.kit_id=4,po.coins=700..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute if entity @s[scores={po.state.kit_id=4,po.coins=700..},tag=achat] run scoreboard players set @s po.state.kit_id 5
execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute if entity @s[scores={po.state.kit_id=5,po.coins=700..},tag=achat] run scoreboard players remove @s po.coins 700
execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run execute if entity @s[scores={po.state.kit_id=5},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.fantome=1}] run scoreboard players set @a[scores={po.shop.fantome=1,po.state.kit_id=5}] po.shop.fantome 0

#---------------------------------------------------------------
#achat murloc

execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute unless entity @s[scores={po.state.kit_id=5,po.coins=775..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute unless entity @s[scores={po.state.kit_id=5,po.coins=775..}] run scoreboard players set @s po.shop.murloc 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute if entity @s[scores={po.state.kit_id=5,po.coins=775..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute if entity @s[scores={po.state.kit_id=5,po.coins=775..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute if entity @s[scores={po.state.kit_id=5,po.coins=775..},tag=achat] run scoreboard players set @s po.state.kit_id 6
execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute if entity @s[scores={po.state.kit_id=6,po.coins=775..},tag=achat] run scoreboard players remove @s po.coins 775
execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run execute if entity @s[scores={po.state.kit_id=6},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.murloc=1}] run scoreboard players set @a[scores={po.shop.murloc=1,po.state.kit_id=6}] po.shop.murloc 0

#---------------------------------------------------------------
#achat batisseur

execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute unless entity @s[scores={po.state.kit_id=6,po.coins=850..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute unless entity @s[scores={po.state.kit_id=6,po.coins=850..}] run scoreboard players set @s po.shop.batisseur 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute if entity @s[scores={po.state.kit_id=6,po.coins=850..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute if entity @s[scores={po.state.kit_id=6,po.coins=850..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute if entity @s[scores={po.state.kit_id=6,po.coins=850..},tag=achat] run scoreboard players set @s po.state.kit_id 7
execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute if entity @s[scores={po.state.kit_id=7,po.coins=850..},tag=achat] run scoreboard players remove @s po.coins 850
execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run execute if entity @s[scores={po.state.kit_id=7},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.batisseur=1}] run scoreboard players set @a[scores={po.shop.batisseur=1,po.state.kit_id=7}] po.shop.batisseur 0
#---------------------------------------------------------------
#achat assassin

execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute unless entity @s[scores={po.state.kit_id=7,po.coins=875..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute unless entity @s[scores={po.state.kit_id=7,po.coins=875..}] run scoreboard players set @s po.shop.assassin 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute if entity @s[scores={po.state.kit_id=7,po.coins=875..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute if entity @s[scores={po.state.kit_id=7,po.coins=875..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute if entity @s[scores={po.state.kit_id=7,po.coins=875..},tag=achat] run scoreboard players set @s po.state.kit_id 8
execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute if entity @s[scores={po.state.kit_id=8,po.coins=875..},tag=achat] run scoreboard players remove @s po.coins 875
execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run execute if entity @s[scores={po.state.kit_id=8},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.assassin=1}] run scoreboard players set @a[scores={po.shop.assassin=1,po.state.kit_id=8}] po.shop.assassin 0

#---------------------------------------------------------------
#achat chasseur

execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute unless entity @s[scores={po.state.kit_id=8,po.coins=1000..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute unless entity @s[scores={po.state.kit_id=8,po.coins=1000..}] run scoreboard players set @s po.shop.chasseur_gg 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute if entity @s[scores={po.state.kit_id=8,po.coins=1000..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute if entity @s[scores={po.state.kit_id=8,po.coins=1000..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute if entity @s[scores={po.state.kit_id=8,po.coins=1000..},tag=achat] run scoreboard players set @s po.state.kit_id 9
execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute if entity @s[scores={po.state.kit_id=9,po.coins=1000..},tag=achat] run scoreboard players remove @s po.coins 1000
execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run execute if entity @s[scores={po.state.kit_id=9},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.chasseur_gg=1}] run scoreboard players set @a[scores={po.shop.chasseur_gg=1,po.state.kit_id=9}] po.shop.chasseur_gg 0

#---------------------------------------------------------------
#achat Maitre Mirroir

execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute unless entity @s[scores={po.state.kit_id=9,po.coins=1400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute unless entity @s[scores={po.state.kit_id=9,po.coins=1400..}] run scoreboard players set @s po.shop.maitre_m 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute if entity @s[scores={po.state.kit_id=9,po.coins=1400..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute if entity @s[scores={po.state.kit_id=9,po.coins=1400..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute if entity @s[scores={po.state.kit_id=9,po.coins=1400..},tag=achat] run scoreboard players set @s po.state.kit_id 10
execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute if entity @s[scores={po.state.kit_id=10,po.coins=1400..},tag=achat] run scoreboard players remove @s po.coins 1400
execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run execute if entity @s[scores={po.state.kit_id=10},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.maitre_m=1}] run scoreboard players set @a[scores={po.shop.maitre_m=1,po.state.kit_id=10}] po.shop.maitre_m 0

#---------------------------------------------------------------
#achat Ingenieur

execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute unless entity @s[scores={po.state.kit_id=10,po.coins=1600..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute unless entity @s[scores={po.state.kit_id=10,po.coins=1600..}] run scoreboard players set @s po.shop.ingenieur 0


execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute if entity @s[scores={po.state.kit_id=10,po.coins=1600..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute if entity @s[scores={po.state.kit_id=10,po.coins=1600..}] run tag @s add achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute if entity @s[scores={po.state.kit_id=10,po.coins=1600..},tag=achat] run scoreboard players set @s po.state.kit_id 11
execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute if entity @s[scores={po.state.kit_id=11,po.coins=1600..},tag=achat] run scoreboard players remove @s po.coins 1600
execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run execute if entity @s[scores={po.state.kit_id=11},tag=achat] run tag @s remove achat
execute as @a[scores={po.ui.kit_menu=2,po.shop.ingenieur=1}] run scoreboard players set @a[scores={po.shop.ingenieur=1,po.state.kit_id=11}] po.shop.ingenieur 0

#---------------------------------------------------------------