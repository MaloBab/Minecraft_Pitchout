#initialisation des scores

execute as @a[scores={po.ui.kit_menu=2},team=hub] store result score @s po.shovel.wood run clear @s pitchout:wooden_shovel
execute as @a[scores={po.ui.kit_menu=2},team=hub] store result score @s po.shovel.stone run clear @s pitchout:stone_shovel
execute as @a[scores={po.ui.kit_menu=2},team=hub] store result score @s po.shovel.iron run clear @s pitchout:iron_shovel
execute as @a[scores={po.ui.kit_menu=2},team=hub] store result score @s po.shovel.gold run clear @s pitchout:golden_shovel
execute as @a[scores={po.ui.kit_menu=2},team=hub] store result score @s po.shovel.diamond run clear @s pitchout:diamond_shovel
execute as @a[scores={po.ui.kit_menu=2},team=hub] store result score @s po.shovel.netherite run clear @s pitchout:netherite_shovel

#----------------------------------------------------------------------
#selection des pelles pour jeu

execute as @a[scores={po.ui.kit_menu=2,po.shovel.wood=1,po.model.pelle0=1}] run scoreboard players set @s po.model.pelle0 2
execute as @a[scores={po.ui.kit_menu=2,po.shovel.wood=1,po.model.pelle0=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1,po.model.pelle1=1}] run scoreboard players set @s po.model.pelle1 2
execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1,po.model.pelle1=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1,po.model.pelle2=1}] run scoreboard players set @s po.model.pelle2 2
execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1,po.model.pelle2=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1,po.model.pelle3=1}] run scoreboard players set @s po.model.pelle3 2
execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1,po.model.pelle3=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1,po.model.pelle4=1}] run scoreboard players set @s po.model.pelle4 2
execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1,po.model.pelle4=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1,po.model.pelle5=1}] run scoreboard players set @s po.model.pelle5 2
execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1,po.model.pelle5=2}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]

#----------------------------------------------------------------------
#achats pelles

execute as @a[scores={po.model.pelle0=2,po.shovel.wood=1,po.model.pelle1=1..}] run scoreboard players set @s po.model.pelle1 1
execute as @a[scores={po.model.pelle0=2,po.shovel.wood=1,po.model.pelle2=1..}] run scoreboard players set @s po.model.pelle2 1
execute as @a[scores={po.model.pelle0=2,po.shovel.wood=1,po.model.pelle3=1..}] run scoreboard players set @s po.model.pelle3 1
execute as @a[scores={po.model.pelle0=2,po.shovel.wood=1,po.model.pelle4=1..}] run scoreboard players set @s po.model.pelle4 1
execute as @a[scores={po.model.pelle0=2,po.shovel.wood=1,po.model.pelle5=1..}] run scoreboard players set @s po.model.pelle5 1


execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1}] run execute if entity @s[scores={po.model.pelle1=0,po.coins=60..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1}] run execute if entity @s[scores={po.model.pelle1=0,po.coins=60..}] run scoreboard players remove @s po.coins 60
execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1}] run execute if entity @s[scores={po.model.pelle1=0}] run scoreboard players set @s po.model.pelle1 1
execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1,po.model.pelle1=1}] run scoreboard players set @s po.shovel.stone 0

execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1}] run execute if entity @s[scores={po.model.pelle1=0,po.coins=..60}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.stone=1,po.model.pelle1=0,po.coins=..60}] run scoreboard players set @a[scores={po.shovel.stone=1}] po.shovel.stone 0


execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1}] run execute if entity @s[scores={po.model.pelle2=0,po.coins=120..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1}] run execute if entity @s[scores={po.model.pelle2=0,po.coins=120..}] run scoreboard players remove @s po.coins 120
execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1}] run execute if entity @s[scores={po.model.pelle2=0}] run scoreboard players set @s po.model.pelle2 1
execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1,po.model.pelle2=1}] run scoreboard players set @s po.shovel.iron 0

execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1}] run execute if entity @s[scores={po.model.pelle2=0,po.coins=..120}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.iron=1,po.model.pelle2=0,po.coins=..120}] run scoreboard players set @a[scores={po.shovel.iron=1}] po.shovel.iron 0


execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1}] run execute if entity @s[scores={po.model.pelle3=0,po.coins=200..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1}] run execute if entity @s[scores={po.model.pelle3=0,po.coins=200..}] run scoreboard players remove @s po.coins 200
execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1}] run execute if entity @s[scores={po.model.pelle3=0}] run scoreboard players set @s po.model.pelle3 1
execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1,po.model.pelle3=1}] run scoreboard players set @s po.shovel.gold 0

execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1}] run execute if entity @s[scores={po.model.pelle3=0,po.coins=..200}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.gold=1,po.model.pelle3=0,po.coins=..200}] run scoreboard players set @a[scores={po.shovel.gold=1}] po.shovel.gold 0


execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1}] run execute if entity @s[scores={po.model.pelle4=0,po.coins=320..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1}] run execute if entity @s[scores={po.model.pelle4=0,po.coins=320..}] run scoreboard players remove @s po.coins 320
execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1}] run execute if entity @s[scores={po.model.pelle4=0}] run scoreboard players set @s po.model.pelle4 1
execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1,po.model.pelle4=1}] run scoreboard players set @s po.shovel.diamond 0

execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1}] run execute if entity @s[scores={po.model.pelle4=0,po.coins=..320}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.diamond=1,po.model.pelle4=0,po.coins=..320}] run scoreboard players set @a[scores={po.shovel.gold=1}] po.shovel.diamond 0


execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1}] run execute if entity @s[scores={po.model.pelle5=0,po.coins=450..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1}] run execute if entity @s[scores={po.model.pelle5=0,po.coins=450..}] run scoreboard players remove @s po.coins 450
execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1}] run execute if entity @s[scores={po.model.pelle5=0}] run scoreboard players set @s po.model.pelle5 1
execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1,po.model.pelle5=1}] run scoreboard players set @s po.shovel.netherite 0

execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1}] run execute if entity @s[scores={po.model.pelle5=0,po.coins=..450}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"}]
execute as @a[scores={po.ui.kit_menu=2,po.shovel.netherite=1,po.model.pelle5=0,po.coins=..450}] run scoreboard players set @a[scores={po.shovel.netherite=1}] po.shovel.netherite 0

#----------------------------------------------------------------------
#reinitialisation pelles
execute as @a[scores={po.model.pelle1=2,po.shovel.stone=1,po.model.pelle0=1..}] run scoreboard players set @s po.model.pelle0 1
execute as @a[scores={po.model.pelle1=2,po.shovel.stone=1,po.model.pelle2=1..}] run scoreboard players set @s po.model.pelle2 1
execute as @a[scores={po.model.pelle1=2,po.shovel.stone=1,po.model.pelle3=1..}] run scoreboard players set @s po.model.pelle3 1
execute as @a[scores={po.model.pelle1=2,po.shovel.stone=1,po.model.pelle4=1..}] run scoreboard players set @s po.model.pelle4 1
execute as @a[scores={po.model.pelle1=2,po.shovel.stone=1,po.model.pelle5=1..}] run scoreboard players set @s po.model.pelle5 1

execute as @a[scores={po.model.pelle2=2,po.shovel.iron=1,po.model.pelle0=1..}] run scoreboard players set @s po.model.pelle0 1
execute as @a[scores={po.model.pelle2=2,po.shovel.iron=1,po.model.pelle1=1..}] run scoreboard players set @s po.model.pelle1 1
execute as @a[scores={po.model.pelle2=2,po.shovel.iron=1,po.model.pelle3=1..}] run scoreboard players set @s po.model.pelle3 1
execute as @a[scores={po.model.pelle2=2,po.shovel.iron=1,po.model.pelle4=1..}] run scoreboard players set @s po.model.pelle4 1
execute as @a[scores={po.model.pelle2=2,po.shovel.iron=1,po.model.pelle5=1..}] run scoreboard players set @s po.model.pelle5 1

execute as @a[scores={po.model.pelle3=2,po.shovel.gold=1,po.model.pelle0=1..}] run scoreboard players set @s po.model.pelle0 1
execute as @a[scores={po.model.pelle3=2,po.shovel.gold=1,po.model.pelle1=1..}] run scoreboard players set @s po.model.pelle1 1
execute as @a[scores={po.model.pelle3=2,po.shovel.gold=1,po.model.pelle2=1..}] run scoreboard players set @s po.model.pelle2 1
execute as @a[scores={po.model.pelle3=2,po.shovel.gold=1,po.model.pelle4=1..}] run scoreboard players set @s po.model.pelle4 1
execute as @a[scores={po.model.pelle3=2,po.shovel.gold=1,po.model.pelle5=1..}] run scoreboard players set @s po.model.pelle5 1

execute as @a[scores={po.model.pelle4=2,po.shovel.diamond=1,po.model.pelle0=1..}] run scoreboard players set @s po.model.pelle0 1
execute as @a[scores={po.model.pelle4=2,po.shovel.diamond=1,po.model.pelle1=1..}] run scoreboard players set @s po.model.pelle1 1
execute as @a[scores={po.model.pelle4=2,po.shovel.diamond=1,po.model.pelle2=1..}] run scoreboard players set @s po.model.pelle2 1
execute as @a[scores={po.model.pelle4=2,po.shovel.diamond=1,po.model.pelle3=1..}] run scoreboard players set @s po.model.pelle3 1
execute as @a[scores={po.model.pelle4=2,po.shovel.diamond=1,po.model.pelle5=1..}] run scoreboard players set @s po.model.pelle5 1

execute as @a[scores={po.model.pelle5=2,po.shovel.netherite=1,po.model.pelle0=1..}] run scoreboard players set @s po.model.pelle0 1
execute as @a[scores={po.model.pelle5=2,po.shovel.netherite=1,po.model.pelle1=1..}] run scoreboard players set @s po.model.pelle1 1
execute as @a[scores={po.model.pelle5=2,po.shovel.netherite=1,po.model.pelle2=1..}] run scoreboard players set @s po.model.pelle2 1
execute as @a[scores={po.model.pelle5=2,po.shovel.netherite=1,po.model.pelle3=1..}] run scoreboard players set @s po.model.pelle3 1
execute as @a[scores={po.model.pelle5=2,po.shovel.netherite=1,po.model.pelle4=1..}] run scoreboard players set @s po.model.pelle4 1