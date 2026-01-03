execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modLasso0 run clear @s minecraft:fishing_rod[minecraft:custom_name='[{"text":"LASSO : ","bold":true,"color":"yellow"},{"text":"DEFAUT","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Cliquez pour sélectionner","color":"green"}]']]

execute as @a[scores={modLasso0=1..}] run scoreboard players set @s equipLasso 1
execute as @a[scores={modLasso0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------

#cosRangerG pour les possession
execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modLasso1 run clear @s minecraft:fishing_rod[minecraft:custom_name='[{"text":"LASSO :","bold":true,"color":"yellow"},{"text":" Modèle 1","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Cowboy ! ] ","color":"dark_purple"},{"text":"-","bold":true,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"200 ","color":"yellow"},{"text":"coins","color":"gold"}]'],minecraft:custom_model_data=1]

execute as @a[scores={modLasso1=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={modLasso1=1..}] run scoreboard players operation @s modulo %= 2 balise

#cause achat échoué
execute as @a[scores={modLasso1=1..,coins=..200},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={modLasso1=1..,coins=200..},advancements={pitchout:hautfait/ranger/cowboy=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Cowboy ! ]","color":"aqua"}]
execute as @a[scores={modLasso1=1..,coins=..200},advancements={pitchout:hautfait/ranger/cowboy=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={modLasso1=1..,coins=200..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 2 balise
execute as @a[scores={modLasso1=1..,coins=200..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={modLasso1=1..,coins=200..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 200
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={modLasso1=1..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipLasso 2
execute as @a[scores={modLasso1=1..},advancements={pitchout:hautfait/ranger/cowboy=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------

execute as @a[scores={modLasso0=1..}] run scoreboard players set @s modLasso0 0
execute as @a[scores={modLasso1=1..}] run scoreboard players set @s modLasso1 0

#----------------------------------------------------------------------------------
#enderpearl

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modenderP0 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524c"},{"text":" DEFAUT","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Cliquez pour sélectionner","color":"green"}]']]

execute as @a[scores={modenderP0=1..}] run scoreboard players set @s equipEnder 1
execute as @a[scores={modenderP0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------
#ender pearl 1
#cosRangerG pour les possession
execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modenderP1 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 1","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Teleportation ! ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"150 ","color":"yellow"},{"text":"coins","color":"gold"}]'],minecraft:custom_model_data=1]

execute as @a[scores={modenderP1=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={modenderP1=1..}] run scoreboard players operation @s modulo %= 3 balise

#cause achat échoué
execute as @a[scores={modenderP1=1..,coins=..150},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={modenderP1=1..,coins=150..},advancements={pitchout:hautfait/ranger/teleportation=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Teleportation ! ]","color":"aqua"}]
execute as @a[scores={modenderP1=1..,coins=..150},advancements={pitchout:hautfait/ranger/teleportation=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={modenderP1=1..,coins=150..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 3 balise
execute as @a[scores={modenderP1=1..,coins=150..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={modenderP1=1..,coins=150..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 150
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={modenderP1=1..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipEnder 2
execute as @a[scores={modenderP1=1..},advancements={pitchout:hautfait/ranger/teleportation=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------
#ender pearl 2

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modenderP2 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 2","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ In Extremis I ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"250 ","color":"yellow"},{"text":"coins","color":"gold"}]'],minecraft:custom_model_data=2]

execute as @a[scores={modenderP2=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={modenderP2=1..}] run scoreboard players operation @s modulo %= 5 balise

#cause achat échoué
execute as @a[scores={modenderP2=1..,coins=..250},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={modenderP2=1..,coins=250..},advancements={pitchout:hautfait/ranger/inextremis=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ In Extremis I ]","color":"light_purple"}]
execute as @a[scores={modenderP2=1..,coins=..250},advancements={pitchout:hautfait/ranger/inextremis=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={modenderP2=1..,coins=250..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 5 balise
execute as @a[scores={modenderP2=1..,coins=250..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={modenderP2=1..,coins=250..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 250
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={modenderP2=1..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipEnder 3
execute as @a[scores={modenderP2=1..},advancements={pitchout:hautfait/ranger/inextremis=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------

#ender pearl 3

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modenderP3 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 3","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ In Extremis II ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"350 ","color":"yellow"},{"text":"coins","color":"gold"}]'],minecraft:custom_model_data=3]

execute as @a[scores={modenderP3=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={modenderP3=1..}] run scoreboard players operation @s modulo %= 7 balise

#cause achat échoué
execute as @a[scores={modenderP3=1..,coins=..350},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={modenderP3=1..,coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ In Extremis II ]","color":"dark_red"}]
execute as @a[scores={modenderP3=1..,coins=..350},advancements={pitchout:hautfait/ranger/inextremis2=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={modenderP3=1..,coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 7 balise
execute as @a[scores={modenderP3=1..,coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={modenderP3=1..,coins=350..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 350
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={modenderP3=1..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipEnder 4
execute as @a[scores={modenderP3=1..},advancements={pitchout:hautfait/ranger/inextremis2=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------
#ender pearl 4

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s modenderP4 run clear @s minecraft:ender_pearl[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524B"},{"text":" Modele 4","bold":true,"color":"dark_blue"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Du danger ? Quel danger ? II ]","color":"dark_purple"},{"text":" ","color":"green"},{"text":"- ","bold":true,"color":"red"},{"text":"400 ","color":"yellow"},{"text":"coins","color":"gold"}]'],minecraft:custom_model_data=4]

execute as @a[scores={modenderP4=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={modenderP4=1..}] run scoreboard players operation @s modulo %= 11 balise

#cause achat échoué
execute as @a[scores={modenderP4=1..,coins=..400},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={modenderP4=1..,coins=400..},advancements={pitchout:hautfait/ranger/danger2=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Du danger ? Quel danger II ]","color":"dark_red"}]
execute as @a[scores={modenderP4=1..,coins=..400},advancements={pitchout:hautfait/ranger/danger2=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={modenderP4=1..,coins=400..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 11 balise
execute as @a[scores={modenderP4=1..,coins=400..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={modenderP4=1..,coins=400..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 400
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={modenderP4=1..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipEnder 5
execute as @a[scores={modenderP4=1..},advancements={pitchout:hautfait/ranger/danger2=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Cosmetique selectionnée !","color":"aqua"}]
#----------------------------------------------------------------------------------


#son Lasso

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s sonLasso0 run clear @s minecraft:barrier[minecraft:custom_name='[{"text":"LASSO : ","bold":true,"color":"yellow"},{"text":"son par défaut","color":"light_purple"}]']

execute as @a[scores={sonLasso0=1..}] run scoreboard players set @s equipLassoSon 0
execute as @a[scores={sonLasso0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]
#----------------------------------------------------------------------------------

#son enderpearl

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s sonEnder0 run clear @s minecraft:barrier[minecraft:custom_name='[{"text":"ENDER PEARL : ","bold":true,"color":"#05524B"},{"text":"son par défaut","color":"light_purple"}]']

execute as @a[scores={sonEnder0=1..}] run scoreboard players set @s equipEnderSon 0
execute as @a[scores={sonEnder0=1..}] run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]

#----------------------------------------------------------------------------------------------
#son Lasso 1

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s sonLasso1 run clear @s minecraft:music_disc_cat[minecraft:custom_name='[{"text":"LASSO : ","bold":true,"color":"yellow"},{"text":"son alternatif 1","color":"light_purple"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Baroud d\'honneur ] ","color":"dark_purple"},{"text":"-","bold":true,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"150 ","color":"yellow"},{"text":"coins","color":"gold"}]']]

execute as @a[scores={sonLasso1=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={sonLasso1=1..}] run scoreboard players operation @s modulo %= 13 balise

#cause achat échoué
execute as @a[scores={sonLasso1=1..,coins=..150},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={sonLasso1=1..,coins=150..},advancements={pitchout:hautfait/ranger/barroud=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Baroud d'honneur ]","color":"dark_red"}]
execute as @a[scores={sonLasso1=1..,coins=..150},advancements={pitchout:hautfait/ranger/barroud=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={sonLasso1=1..,coins=150..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 13 balise
execute as @a[scores={sonLasso1=1..,coins=150..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={sonLasso1=1..,coins=150..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 150
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={sonLasso1=1..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipLassoSon 1
execute as @a[scores={sonLasso1=1..},advancements={pitchout:hautfait/ranger/barroud=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]
#----------------------------------------------------------------------------------

#----------------------------------------------------------------------------------------------
#son Enderpearl 1

execute as @a[scores={cosmeticmenu=1..}] run execute store success score @s sonEnder1 run clear @s minecraft:music_disc_13[minecraft:custom_name='[{"text":"ENDER PEARL :","bold":true,"color":"#05524c"},{"text":" son alternatif 1","color":"light_purple"}]',minecraft:lore=['[{"text":"Prérequis : ","bold":true,"color":"red"},{"text":"[ Du danger ? Quel danger ? I] ","color":"dark_purple"},{"text":"-","bold":true,"color":"red"},{"text":" ","color":"dark_purple"},{"text":"200 ","color":"yellow"},{"text":"coins","color":"gold"}]']]

execute as @a[scores={sonEnder1=1..}] run scoreboard players operation @s modulo = @s cosRangerG
execute as @a[scores={sonEnder1=1..}] run scoreboard players operation @s modulo %= 17 balise

#cause achat échoué
execute as @a[scores={sonEnder1=1..,coins=..200},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Argent insuffisant !","color":"red"}]
execute as @a[scores={sonEnder1=1..,coins=200..},advancements={pitchout:hautfait/ranger/danger=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible !","color":"red"},{"text":"Il vous faut débloquer ","color":"red"},{"text":"le succès","color":"gold"},{"text":" :","color":"red"},{"text":" ","color":"light_purple"},{"text":"\n[ Du danger ? Quel danger I ]","color":"dark_red"}]
execute as @a[scores={sonEnder1=1..,coins=..200},advancements={pitchout:hautfait/ranger/danger=false}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat Impossible ! Jettez un oeil aux prérequis !","color":"red"}]


#test condition d'achat réunies
execute as @a[scores={sonEnder1=1..,coins=150..},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s modulo matches 0 run scoreboard players operation @s cosRangerG *= 17 balise
execute as @a[scores={sonEnder1=1..,coins=150..},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Achat effectué avec succès !","color":"gold"}]
execute as @a[scores={sonEnder1=1..,coins=150..},advancements={pitchout:hautfait/ranger/danger=true}] run execute unless score @s modulo matches 0 run scoreboard players remove @s coins 200
#----------------------------------------------------------------------------------

#test condition équipement
execute as @a[scores={sonEnder1=1..},advancements={pitchout:hautfait/ranger/danger=true}] run execute if score @s modulo matches 0 run scoreboard players set @s equipEnderSon 1
execute as @a[scores={sonEnder1=1..},advancements={pitchout:hautfait/ranger/danger=true}] run execute if score @s modulo matches 0 run tellraw @s ["",{"text":"[SHOP]","bold":true,"color":"dark_green"},{"text":" Effet sonore selectionné !","color":"aqua"}]
#----------------------------------------------------------------------------------

execute as @a[scores={modenderP0=1..}] run scoreboard players set @s modenderP0 0
execute as @a[scores={modenderP1=1..}] run scoreboard players set @s modenderP1 0
execute as @a[scores={modenderP2=1..}] run scoreboard players set @s modenderP2 0
execute as @a[scores={modenderP3=1..}] run scoreboard players set @s modenderP3 0
execute as @a[scores={modenderP4=1..}] run scoreboard players set @s modenderP4 0
execute as @a[scores={sonLasso0=1..}] run scoreboard players set @s sonLasso0 0
execute as @a[scores={sonEnder0=1..}] run scoreboard players set @s sonEnder0 0
execute as @a[scores={sonLasso1=1..}] run scoreboard players set @s sonLasso1 0
execute as @a[scores={sonEnder1=1..}] run scoreboard players set @s sonEnder1 0


#-----------------------------------------------------------------------------------------------

#FORESTIER