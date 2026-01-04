#gestion des flêches

execute as @e[type=arrow,nbt={weapon:{id:"pitchout:crossbow"}}] run data merge entity @s {PierceLevel:100b}
execute as @e[type=pitchout:arrow,tag=mouv,nbt={inGround:0b}] run data merge entity @s {life:980s}

execute as @e[type=pitchout:arrow] run execute store result score @s lifeF run data get entity @s life 1

execute as @e[type=arrow,nbt={inGround:1b}] run data merge entity @s {pickup:0b}
execute as @e[type=pitchout:arrow,scores={lifeF=1..799}] run data merge entity @s {life:800s}
execute as @e[type=pitchout:arrow,tag=Ftp,nbt={inGround:0b}] run data merge entity @s {life:800s}
execute as @e[type=pitchout:arrow,tag=Ftp2,nbt={inGround:0b}] run data merge entity @s {life:800s}
execute as @e[type=pitchout:arrow,tag=Bar,nbt={inGround:0b}] run data merge entity @s {life:800s}

#-----------------------------------------------------------------------------------------------

#selection mode
execute as @a[scores={Cfleche=5..}] run scoreboard players set @s Cfleche 1

execute as @a[scores={sneak=1..},tag=!sneak] run scoreboard players add @s Cfleche 1
execute as @a[scores={sneak=1..},tag=!sneak] run tag @s add sneak

execute as @a[scores={sneak=5..},tag=sneak] run tag @s remove sneak
execute as @a[scores={sneak=5..},team=!mage] run scoreboard players set @s sneak 0

execute as @a[scores={crossbow=5..}] run scoreboard players set @s crossbow 0



execute as @a[nbt={SelectedItem:{id:"pitchout:gray_dye"}}] run scoreboard players set @s Cfleche 1
execute as @a[nbt={SelectedItem:{id:"pitchout:red_dye"}}] run scoreboard players set @s Cfleche 2
execute as @a[nbt={SelectedItem:{id:"pitchout:white_dye"}}] run scoreboard players set @s Cfleche 3
execute as @a[nbt={SelectedItem:{id:"pitchout:blue_dye"}}] run scoreboard players set @s Cfleche 4

#-------------------------------------------------------------------------------
#modes arbalete
#mode 1
execute at @a[scores={Cfleche=1}] run execute as @e[type=pitchout:arrow,nbt={inGround:0b,weapon:{id:"pitchout:crossbow"}},distance=..2,tag=!Ftp,tag=!Ftp2,tag=!Vis,tag=!Bar] run tag @s add mouv
execute at @e[tag=mouv,nbt={inGround:1b}] run particle pitchout:witch ~ ~ ~ 0.1 0.1 0.1 0.02 5 force

execute at @e[type=arrow,tag=mouv,tag=part] run effect give @a[distance=..5] pitchout:slowness 1 5 true
execute at @e[type=arrow,tag=mouv,tag=part] run effect give @a[distance=..5] pitchout:jump_boost 1 170 true

execute at @e[tag=mouv,nbt={inGround:1b},tag=!part] run summon pitchout:area_effect_cloud ~5 ~ ~ {Duration:220,CustomName:'{"text":"Circle"}'}
execute as @e[tag=mouv,nbt={inGround:1b}] run tag @s add part

execute at @e[name="Circle"] run tp @e[sort=nearest,name="Circle",limit=1] ^ ^ ^0.5 ~6 ~
execute at @e[name="Circle"] run particle pitchout:dragon_breath ~ ~0.15 ~ 0 0 0 0.00002 5 force @a

#---------------------------------------------------------------------------------

#autres mode


execute at @a[scores={Cfleche=2}] run execute as @e[type=pitchout:arrow,nbt={inGround:0b,weapon:{id:"pitchout:crossbow"}},distance=..2,tag=!Ftp,tag=!Ftp2,tag=!mouv,tag=!Bar] run tag @s add Vis
execute at @e[tag=Vis,nbt={inGround:1b}] run particle pitchout:large_smoke ~ ~ ~ 0.1 0.1 0.1 0.02 4 force
execute as @e[type=pitchout:arrow,tag=Vis,nbt={inGround:0b}] run data merge entity @s {life:980s}
execute at @e[type=arrow,tag=Vis,tag=part4] run effect give @a[distance=..5] pitchout:slowness 3 0 true
execute at @e[type=arrow,tag=Vis,tag=part4] run effect give @a[distance=..5] pitchout:blindness 3 0 true
execute at @e[type=arrow,tag=Vis,tag=part4] run effect give @a[distance=..5] pitchout:glowing 1 0 true

execute at @a[scores={Cfleche=3}] run execute as @e[type=pitchout:arrow,nbt={inGround:0b,weapon:{id:"pitchout:crossbow"}},distance=..2,tag=!Ftp,tag=!Ftp2,tag=!Vis,tag=!mouv] run tag @s add Bar
execute at @e[tag=Bar,nbt={inGround:1b}] run particle pitchout:end_rod ~ ~ ~ 0.1 0.1 0.1 0.02 4 force
execute at @e[type=arrow,tag=Bar,tag=part5] run effect give @e[distance=..5,type=!pitchout:area_effect_cloud,type=!pitchout:armor_stand,type=!#pitchout:arrows] pitchout:levitation 3 1 true
execute at @e[type=arrow,tag=Bar,tag=part5] run effect give @a[distance=..5] pitchout:slow_falling 5 1 true

execute at @e[tag=Vis,nbt={inGround:1b},tag=!part4] run summon pitchout:area_effect_cloud ~5 ~ ~ {Duration:220,CustomName:'{"text":"Circle4"}'}
execute as @e[tag=Vis,nbt={inGround:1b}] run tag @s add part4
execute at @e[name="Circle4"] run tp @e[sort=nearest,name="Circle4",limit=1] ^ ^ ^0.5 ~6 ~
execute at @e[name="Circle4"] run particle pitchout:firework ~ ~0.15 ~ 0 0 0 0.00002 5 force @a

execute at @e[tag=Bar,nbt={inGround:1b},tag=!part5] run summon pitchout:area_effect_cloud ~5 ~ ~ {Duration:400,CustomName:'{"text":"Circle5"}'}
execute as @e[tag=Bar,nbt={inGround:1b}] run tag @s add part5
execute at @e[name="Circle5"] run tp @e[sort=nearest,name="Circle5",limit=1] ^ ^ ^0.5 ~6 ~
execute at @e[name="Circle5"] run particle pitchout:mycelium ~ ~0.15 ~ 0 0 0 0.00001 10 force @a
#-----------------------------------------------------------------------------------------------------------------------------------------
#mode 4

#effets visus
execute at @e[tag=Ftp,nbt={inGround:1b},tag=!part2] run summon pitchout:area_effect_cloud ~1 ~ ~ {Duration:400,CustomName:'{"text":"Circle2"}'}
execute as @e[tag=Ftp,nbt={inGround:1b}] run tag @s add part2
execute at @e[tag=Ftp,nbt={inGround:1b}] run particle pitchout:enchant ~ ~ ~ 0.4 0.5 0.4 0.03 5 force

execute at @e[name="Circle2"] run tp @e[sort=nearest,name="Circle2",limit=1] ^ ^ ^0.5 ~30 ~
execute at @e[name="Circle2"] run particle pitchout:soul_fire_flame ~ ~0.15 ~ 0 0 0 0.00002 5 force @a

execute at @e[tag=Ftp2,nbt={inGround:1b},tag=!part3] run summon pitchout:area_effect_cloud ~1 ~ ~ {Duration:400,CustomName:'{"text":"Circle3"}'}
execute as @e[tag=Ftp2,nbt={inGround:1b}] run tag @s add part3
execute at @e[tag=Ftp2,nbt={inGround:1b}] run particle pitchout:enchant ~ ~ ~ 0.4 0.5 0.4 0.03 5 force

execute at @e[name="Circle3"] run tp @e[sort=nearest,name="Circle3",limit=1] ^ ^ ^0.5 ~30 ~
execute at @e[name="Circle3"] run particle pitchout:flame ~ ~0.15 ~ 0 0 0 0.00002 5 force @a
#________________________________________________________________________________________________

execute at @a[scores={Cfleche=4,crossbow=1}] run execute as @e[type=pitchout:arrow,nbt={inGround:0b,weapon:{id:"pitchout:crossbow"}},distance=..2,tag=!mouv,tag=!Ftp2,tag=!Vis,tag=!Bar] run tag @s add Ftp
execute at @e[type=pitchout:arrow,nbt={inGround:0b,weapon:{id:"pitchout:crossbow"}}] run execute as @a[scores={Cfleche=4,crossbow=1},distance=..2] run scoreboard players set @s crossbow 2

execute at @a[scores={Cfleche=4,crossbow=2..}] run execute as @e[type=pitchout:arrow,nbt={inGround:0b,weapon:{id:"pitchout:crossbow"}},distance=..2,tag=!mouv,tag=!Ftp,tag=!Vis,tag=!Bar] run tag @s add Ftp2
execute as @a[scores={Cfleche=4,crossbow=3}] run scoreboard players set @s crossbow 4



execute if score select map matches 1 run execute if entity @e[type=pitchout:arrow,tag=Ftp] run execute unless entity @e[type=pitchout:arrow,tag=Ftp2] run execute at @e[type=pitchout:arrow,tag=Ftp] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 6.55 12.44 9 60 false @s
execute if score select map matches 1 run execute if entity @e[type=pitchout:arrow,tag=Ftp2] run execute unless entity @e[type=pitchout:arrow,tag=Ftp] run execute at @e[type=pitchout:arrow,tag=Ftp2] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 6.55 12.44 9 55 false @s

execute if score select map matches 2 run execute if entity @e[type=pitchout:arrow,tag=Ftp] run execute unless entity @e[type=pitchout:arrow,tag=Ftp2] run execute at @e[type=pitchout:arrow,tag=Ftp] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 587 96 30 20 false @s
execute if score select map matches 2 run execute if entity @e[type=pitchout:arrow,tag=Ftp2] run execute unless entity @e[type=pitchout:arrow,tag=Ftp] run execute at @e[type=pitchout:arrow,tag=Ftp2] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 587 96 30 20 false @s

execute if score select map matches 3 run execute if entity @e[type=pitchout:arrow,tag=Ftp] run execute unless entity @e[type=pitchout:arrow,tag=Ftp2] run execute at @e[type=pitchout:arrow,tag=Ftp] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 1572 108 10 80 false @s
execute if score select map matches 3 run execute if entity @e[type=pitchout:arrow,tag=Ftp2] run execute unless entity @e[type=pitchout:arrow,tag=Ftp] run execute at @e[type=pitchout:arrow,tag=Ftp2] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 1572 108 10 80 false @s

execute if score select map matches 4 run execute if entity @e[type=pitchout:arrow,tag=Ftp] run execute unless entity @e[type=pitchout:arrow,tag=Ftp2] run execute at @e[type=pitchout:arrow,tag=Ftp] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 465 -297 10 80 false @s
execute if score select map matches 4 run execute if entity @e[type=pitchout:arrow,tag=Ftp2] run execute unless entity @e[type=pitchout:arrow,tag=Ftp] run execute at @e[type=pitchout:arrow,tag=Ftp2] run execute as @a[distance=..1,tag=!antiTP] run spreadplayers 465 -297 10 80 false @s

execute if entity @e[type=pitchout:arrow,tag=Ftp] run execute if entity @e[type=pitchout:arrow,tag=Ftp2] run execute at @e[type=pitchout:arrow,tag=Ftp] run execute as @a[distance=..1,tag=!antiTP] run tp @s @e[type=pitchout:arrow,tag=Ftp2,limit=1,sort=arbitrary]
execute at @e[type=pitchout:arrow,tag=Ftp2] run execute as @a[distance=..0,tag=!antiTP] run tag @s add antiTP
execute if entity @e[type=pitchout:arrow,tag=Ftp2] run execute if entity @e[type=pitchout:arrow,tag=Ftp] run execute at @e[type=pitchout:arrow,tag=Ftp2] run execute as @a[distance=..1,tag=!antiTP] run tp @s @e[type=pitchout:arrow,tag=Ftp,limit=1,sort=arbitrary]
execute at @e[type=pitchout:arrow,tag=Ftp] run execute as @a[distance=..0,tag=!antiTP] run tag @s add antiTP


execute as @a[tag=antiTP] run execute at @s run execute unless entity @e[tag=Ftp,distance=..1] run execute unless entity @e[tag=Ftp2,distance=..1] run tag @s remove antiTP

#--------------------------------------------------------------------------------------------------------
#cooldown


execute as @a[scores={Cfleche=1,crossbow=1}] run scoreboard players set @s TimeM1 301
execute as @a[scores={Cfleche=1,crossbow=1..}] run scoreboard players add @s comptarba 1
execute as @a[scores={Cfleche=1,crossbow=1..}] run scoreboard players set @s crossbow 0
execute as @a[scores={TimeM1=1..301}] run scoreboard players remove @s TimeM1 1

execute as @a[scores={Cfleche=2,crossbow=1}] run scoreboard players set @s TimeM2 301
execute as @a[scores={Cfleche=2,crossbow=1..}] run scoreboard players add @s comptarba 1
execute as @a[scores={Cfleche=2,crossbow=1..}] run scoreboard players set @s crossbow 0
execute as @a[scores={TimeM2=1..301}] run scoreboard players remove @s TimeM2 1

execute as @a[scores={Cfleche=3,crossbow=1}] run scoreboard players set @s TimeM3 301
execute as @a[scores={Cfleche=3,crossbow=1..}] run scoreboard players add @s comptarba 1
execute as @a[scores={Cfleche=3,crossbow=1..}] run scoreboard players set @s crossbow 0
execute as @a[scores={TimeM3=1..301}] run scoreboard players remove @s TimeM3 1

execute as @a[scores={Cfleche=4,crossbow=4..}] run scoreboard players set @s TimeM4 401
execute as @a[scores={Cfleche=4,crossbow=4..}] run scoreboard players add @s comptarba 1
execute as @a[scores={Cfleche=4,crossbow=4..}] run scoreboard players set @s crossbow 0
execute as @a[scores={TimeM4=1..401}] run scoreboard players remove @s TimeM4 1

execute as @a[team=Chasseur,scores={comptarba=6..}] run scoreboard players set @s comptarba 0

#--------------------------------------------------------------------------------------------------------
execute as @a[team=!Chasseur] run scoreboard players set @s crossbow 0
execute as @a[team=guerrier] run scoreboard players set @s Cfleche 0

#--------------------------------------------------------------------------------------------------------
#affichage barre d'action

title @a[team=Chasseur,scores={Cfleche=1,TimeM1=..1,comptarba=..4},tag=!mort] actionbar ["",{"text":"Point d'encrage :","bold":true,"color":"light_purple"},{"text":" Prêt","color":"dark_green"}]
title @a[team=Chasseur,scores={Cfleche=1,TimeM1=..1,comptarba=5},tag=!mort] actionbar ["",{"text":"Point d'encrage :","bold":true,"color":"light_purple"},{"text":" Tir Multiple","color":"gold"}]
title @a[team=Chasseur,scores={Cfleche=1,TimeM1=2..},tag=!mort] actionbar ["",{"text":"Point d'encrage :","bold":true,"color":"light_purple"},{"text":" En Charge","color":"red"}]
execute as @a[scores={TimeM1=0..1,Cfleche=1,comptarba=..4},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={TimeM1=2..400,Cfleche=1},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]'] 1
execute as @a[scores={Cfleche=1,comptarba=5},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3,"pitchout:multishot":1},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"}]] 1


title @a[team=Chasseur,scores={Cfleche=2,TimeM2=2..},tag=!mort] actionbar ["",{"text":"Lacrimo :","bold":true,"color":"black"},{"text":" En Charge","color":"red"}]
title @a[team=Chasseur,scores={Cfleche=2,TimeM2=..1,comptarba=..4},tag=!mort] actionbar ["",{"text":"Lacrimo :","bold":true,"color":"black"},{"text":" Prêt","color":"dark_green"}]
title @a[team=Chasseur,scores={Cfleche=2,TimeM2=..1,comptarba=5},tag=!mort] actionbar ["",{"text":"Lacrimo :","bold":true,"color":"black"},{"text":" Tir Multiple","color":"gold"}]
execute as @a[scores={TimeM2=0..1,Cfleche=2,comptarba=..4},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={Cfleche=2,comptarba=5},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3,"pitchout:multishot":1},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={TimeM2=2..400,Cfleche=2},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]'] 1


title @a[team=Chasseur,scores={Cfleche=3,TimeM3=2..},tag=!mort] actionbar ["",{"text":"Tir au Pigeon :","bold":true,"color":"white"},{"text":" En Charge","color":"red"}]
title @a[team=Chasseur,scores={Cfleche=3,TimeM3=..1,comptarba=..4},tag=!mort] actionbar ["",{"text":"Tir au Pigeon :","bold":true,"color":"white"},{"text":" Prêt","color":"dark_green"}]
title @a[team=Chasseur,scores={Cfleche=3,TimeM3=..1,comptarba=5},tag=!mort] actionbar ["",{"text":"Tir au Pigeon :","bold":true,"color":"white"},{"text":" Tir Multiple","color":"gold"}]
execute as @a[scores={TimeM3=0..1,Cfleche=3,comptarba=..4},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={Cfleche=3,comptarba=5},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3,"pitchout:multishot":1},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={TimeM3=2..400,Cfleche=3},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]'] 1


title @a[team=Chasseur,scores={Cfleche=4,TimeM4=2..},tag=!mort] actionbar ["",{"text":"Portal :","bold":true,"color":"aqua"},{"text":" En Charge","color":"red"}]
title @a[team=Chasseur,scores={Cfleche=4,TimeM4=..1,comptarba=..4},tag=!mort] actionbar ["",{"text":"Portal :","bold":true,"color":"aqua"},{"text":" Prêt","color":"dark_green"}]
title @a[team=Chasseur,scores={Cfleche=4,TimeM4=..1,comptarba=5},tag=!mort] actionbar ["",{"text":"Portal :","bold":true,"color":"aqua"},{"text":" Tir Multiple","color":"gold"}]
execute as @a[scores={TimeM4=0..1,Cfleche=4,comptarba=..4},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={Cfleche=4,comptarba=5},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3,"pitchout:multishot":1},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:charged_projectiles=[{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"},{count:1,id:"pitchout:arrow"}]] 1
execute as @a[scores={TimeM4=2..500,Cfleche=4},team=Chasseur] run item replace entity @s weapon.offhand with pitchout:crossbow[pitchout:lore=['[{"text":"Ce fusil lance des projectiles qui affecteront ","color":"dark_purple"},{"text":"toute une zone de l arène","color":"aqua","bold":true},{"text":"","color":"aqua","bold":false}]','[{"text":"Sneak 1/4 de seconde pour changer de mode","color":"dark_red","bold":true}]'],pitchout:enchantments={levels:{"pitchout:unbreaking":3},show_in_tooltip:1b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"FUSIL A GROS GIBIER","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]'] 1

#--------------------------------------------------------------------------------------------------------