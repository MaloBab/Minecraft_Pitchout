execute as @a[scores={po.use.slow_time=1..}] run scoreboard players add @s po.use.slow_time 1
execute as @a[scores={po.use.slow_time=300..}] run scoreboard players set @s po.use.slow_time 0

execute as @a[scores={po.use.slow_time=1..220}] run execute at @s run effect give @a[distance=..8,scores={po.use.slow_time=0}] nausea 5 5 true
execute as @a[scores={po.use.slow_time=1..}] run execute at @s run effect give @a[distance=..8,scores={po.use.slow_time=0}] slowness 1 3 true
execute as @a[scores={po.use.slow_time=1..}] run execute at @s run effect give @a[distance=..8,scores={po.use.slow_time=0}] slow_falling 1 1 true
execute as @a[scores={po.use.slow_time=1..}] run execute at @s run particle dripping_lava ~ ~ ~ 3 0.6 3 2 6 force

#------------------------------------------------------------------
execute as @a[team=GOD,scores={po.legacy.detectmort=1..,po.tech.global_timer=4}] run execute if entity @s[scores={po.tech.remaining_lives=5}] run item replace entity @s hotbar.4 with minecraft:apple[minecraft:lore=['[{"text":"Manger cette ","color":"dark_purple"},{"text":"pomme","color":"red","bold":true},{"text":"","color":"red","bold":false},{"text":" vous permettra de","bold":false},{"text":" lier deux joueurs aléatoires ","bold":false,"color":"aqua"},{"text":"entre eux","bold":false,"color":"dark_purple"}]','[{"text":"pendant ","color":"dark_purple"},{"text":"20 secondes.","color":"gold"}]','[{"text":"Si l\'un meurt, l\'autre mourra aussi ! (Disponible 1 vie sur 2)","color":"light_purple","bold":true}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"LIEN DU SANG","bold":true,"color":"dark_red"}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1
execute as @a[team=GOD,scores={po.legacy.detectmort=1..,po.tech.global_timer=4}] run execute if entity @s[scores={po.tech.remaining_lives=3}] run item replace entity @s hotbar.4 with minecraft:apple[minecraft:lore=['[{"text":"Manger cette ","color":"dark_purple"},{"text":"pomme","color":"red","bold":true},{"text":"","color":"red","bold":false},{"text":" vous permettra de","bold":false},{"text":" lier deux joueurs aléatoires ","bold":false,"color":"aqua"},{"text":"entre eux","bold":false,"color":"dark_purple"}]','[{"text":"pendant ","color":"dark_purple"},{"text":"20 secondes.","color":"gold"}]','[{"text":"Si l\'un meurt, l\'autre mourra aussi ! (Disponible 1 vie sur 2)","color":"light_purple","bold":true}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"LIEN DU SANG","bold":true,"color":"dark_red"}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1
execute as @a[team=GOD,scores={po.legacy.detectmort=1..,po.tech.global_timer=4}] run execute if entity @s[scores={po.tech.remaining_lives=1}] run item replace entity @s hotbar.4 with minecraft:apple[minecraft:lore=['[{"text":"Manger cette ","color":"dark_purple"},{"text":"pomme","color":"red","bold":true},{"text":"","color":"red","bold":false},{"text":" vous permettra de","bold":false},{"text":" lier deux joueurs aléatoires ","bold":false,"color":"aqua"},{"text":"entre eux","bold":false,"color":"dark_purple"}]','[{"text":"pendant ","color":"dark_purple"},{"text":"20 secondes.","color":"gold"}]','[{"text":"Si l\'un meurt, l\'autre mourra aussi ! (Disponible 1 vie sur 2)","color":"light_purple","bold":true}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"LIEN DU SANG","bold":true,"color":"dark_red"}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b}] 1


execute store result score nblien po.use.liengod run execute if entity @a[tag=lien]
execute if entity @a[scores={po.use.bloodlink=1..}] run execute unless score nblien po.use.liengod matches 2 run execute as @a[tag=!lien,tag=!mort,limit=2,sort=random] run tag @s add lien
execute if entity @a[scores={po.use.bloodlink=1..}] run execute store result score @a[tag=lien] po.use.liengod run random value 1..10000
execute if entity @a[scores={po.use.bloodlink=1..}] run execute if entity @a[scores={po.use.liengod=1..},tag=!lien] run execute as @a[scores={po.use.liengod=1..},tag=!lien] run execute if score @s po.use.liengod = @a[scores={po.use.liengod=1..},tag=lien,limit=1] po.use.liengod run execute store result score @a[tag=lien] po.use.liengod run random value 1..10000
execute as @a[tag=lien] run scoreboard players set @s po.cd.lien 0

execute as @a[tag=lien] run execute at @s run title @s title [{"text":"Tu es lié à","color":"red"}]
execute as @a[tag=lien] run execute at @s run title @s subtitle [{"selector":"@a[tag=lien,sort=arbitrary,limit=1,distance=1..]"}]
execute at @a[scores={po.use.liengod=1..,po.cd.lien=1},limit=1,sort=arbitrary] run tellraw @a ["",{"text":"AAA","bold":true,"obfuscated":true,"color":"red"},{"text":" La vie","color":"gold"},{"text":" de ","color":"dark_purple"},{"selector":"@a[scores={po.use.liengod=1..,po.cd.lien=1..3},sort=nearest,limit=1]","bold":true},{"text":" a été lié","color":"red"},{"text":" à celle de ","color":"dark_purple"},{"selector":"@a[scores={po.use.liengod=1..,po.cd.lien=1..3},sort=furthest,limit=1]","bold":true},{"text":" pendant ","color":"dark_purple"},{"text":"30 secondes ! ","color":"aqua"},{"text":"AAA","bold":true,"obfuscated":true,"color":"red"}]
execute as @a[scores={po.cd.lien=40..41}] run title @s clear
execute if entity @a[scores={po.use.liengod=1..},tag=!lien] run execute as @a[scores={po.use.liengod=1..},tag=!lien] run execute unless score @s po.use.liengod = @a[scores={po.use.liengod=1..},tag=lien,limit=1] po.use.liengod run tag @a[tag=lien] remove lien
execute unless entity @a[scores={po.use.liengod=1..},tag=!lien] run tag @a[tag=lien] remove lien
execute unless entity @a[tag=lien] run execute as @a[scores={po.use.bloodlink=1..}] run scoreboard players set @s po.use.bloodlink 0

execute as @a[scores={po.use.liengod=1..}] run scoreboard players add @s po.cd.lien 1
execute as @a[scores={po.cd.lien=600..}] run scoreboard players set @s po.use.liengod 0
execute as @a[scores={po.cd.lien=600..}] run scoreboard players set @s po.cd.lien 0



execute at @a[scores={po.use.liengod=1..}] run particle block{block_state:{Name:redstone_block}} ~ ~ ~ 0.1 0.2 0.1 0.1 10 force
execute if entity @a[scores={po.use.liengod=1..,po.legacy.detectmort=1..}] run execute as @a[scores={po.use.liengod=1..,po.legacy.detectmort=0}] run execute if score @s po.use.liengod = @a[scores={po.use.liengod=1..,po.legacy.detectmort=1..},limit=1] po.use.liengod run kill @s
execute as @a[scores={po.use.liengod=1..,po.legacy.detectmort=1..}] run title @s clear
execute as @a[scores={po.cd.lien=1..}] run execute unless score @s po.use.liengod = @a[scores={po.use.liengod=1..},limit=1] po.use.liengod run scoreboard players set @s po.use.liengod 0
execute as @a[scores={po.use.liengod=0,po.cd.lien=1..}] run scoreboard players set @s po.cd.lien 0
#-------------------------------------------------------------------
#realite
execute as @a[team=GOD,scores={po.tech.remaining_lives=1}] run item replace entity @s hotbar.7 with minecraft:silence_armor_trim_smithing_template[minecraft:lore=['[{"text":"Lorsque vous consommez cet item,","color":"light_purple"},{"text":" vous réécrivez la réalitée.","color":"gold"}]','[{"text":"TOUS LES JOUEURS","color":"aqua","bold":true},{"text":"","bold":false},{"text":" sevoient attribués une ","bold":false,"color":"gold"},{"text":"classe aléatoire !","color":"dark_purple"}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:aqua_affinity":1},show_in_tooltip:0b},minecraft:custom_name='[{"text":"REALITE ALTEREE","color":"#cc99ff","bold":true},{"text":"","color":"#cc99ff","bold":false}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b},minecraft:food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.1}] 1
execute as @a[scores={po.use.god_reality=1..}] run tag @r[tag=!mort,team=!hub,tag=!changeGOD,limit=1] add real

execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=0}] po.legacy.randkit run random value 1..4
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=1}] po.legacy.randkit run random value 1..5
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=2}] po.legacy.randkit run random value 1..6
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=3}] po.legacy.randkit run random value 1..7
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=4}] po.legacy.randkit run random value 1..8
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=5}] po.legacy.randkit run random value 1..9
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=6}] po.legacy.randkit run random value 1..10
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=7}] po.legacy.randkit run random value 1..11
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=8}] po.legacy.randkit run random value 1..12
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=9}] po.legacy.randkit run random value 1..13
execute as @a[tag=real] run execute store result score @s[scores={po.state.kit_id=10..}] po.legacy.randkit run random value 1..14


team join ranger @a[tag=real,scores={po.legacy.randkit=1}]
team join forestier @a[tag=real,scores={po.legacy.randkit=2}]
team join mage @a[tag=real,scores={po.legacy.randkit=3}]
team join guerrier @a[tag=real,scores={po.legacy.randkit=4}]
team join necromancien @a[tag=real,scores={po.legacy.randkit=5}]
team join chevalier @a[tag=real,scores={po.legacy.randkit=6}]
team join chaman @a[tag=real,scores={po.legacy.randkit=7}]
team join druide @a[tag=real,scores={po.legacy.randkit=8}]
team join fantome @a[tag=real,scores={po.legacy.randkit=9}]
team join murloc @a[tag=real,scores={po.legacy.randkit=10}]
team join batisseur @a[tag=real,scores={po.legacy.randkit=11}]
team join assassin @a[tag=real,scores={po.legacy.randkit=12}]
team join Chasseur @a[tag=real,scores={po.legacy.randkit=13}]
team join GOD @a[tag=real,scores={po.legacy.randkit=14}]

execute as @e[tag=selGOD] run tag @s remove selGOD
execute as @a[tag=real,limit=1] run tag @s add changeGOD
execute as @a[tag=changeGOD] run tag @s remove real

execute unless entity @a[tag=!mort,team=!hub,tag=!changeGOD] run scoreboard players set @a[scores={po.use.god_reality=1..}] po.use.god_reality 0

execute unless entity @a[scores={po.use.god_reality=1..}] run execute as @a[tag=changeGOD] run scoreboard players add @s po.tech.remaining_lives 1
execute unless entity @a[scores={po.use.god_reality=1..}] run execute as @a[tag=changeGOD] run clear @s
execute unless entity @a[scores={po.use.god_reality=1..}] run execute as @a[tag=changeGOD] run kill @s
execute unless entity @a[scores={po.use.god_reality=1..}] run execute as @a[tag=changeGOD] run tag @s remove changeGOD
execute unless entity @a[scores={po.use.god_reality=1..}] run scoreboard players set @a po.legacy.randkit 0


#-------------------------------------------------------------------
#po.use.contract
execute if entity @a[scores={po.use.contract=1..}] run clear @a[team=GOD] minecraft:enchanted_book
execute unless entity @a[scores={po.use.contract=1..}] run item replace entity @a[team=GOD,tag=!util,scores={po.tech.remaining_lives=..4}] hotbar.6 with minecraft:enchanted_book[minecraft:lore=['[{"text":"Lorsque vous consommez cet item, vous concluez","color":"light_purple"}]','[{"text":"un pacte avec ","color":"light_purple"},{"text":"un joueur aléatoire. Ce joueur","color":"aqua","bold":true},{"text":" se voit","color":"aqua","bold":false}]','[{"text":"attribuer ","color":"aqua"},{"text":"une cible aléatoire","color":"dark_blue","bold":true},{"text":". Si ","color":"dark_blue","bold":false},{"text":"cette cible meurt","color":"dark_blue","bold":true},{"text":" dans un","color":"dark_blue","bold":false}]','[{"text":"délai de ","color":"dark_blue"},{"text":"30 secondes","color":"dark_red","bold":true},{"text":" alors ","color":"dark_red","bold":false},{"text":"vous perdez une vie et le signataire","color":"red","bold":false}]','[{"text":"du pacte en gagne une.","color":"red"},{"text":" Sinon... C est l inverse !","color":"dark_green"}]','[{"text":"(Utilisabe 1 fois par partie !)","color":"dark_purple","bold":true}]'],minecraft:attribute_modifiers={modifiers:[],show_in_tooltip:0b},minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":1},show_in_tooltip:0b},minecraft:stored_enchantments={levels:{"minecraft:luck_of_the_sea":10},show_in_tooltip:0b},minecraft:custom_name='[{"text":"PACTE INFERNAL","color":"dark_red","bold":true},{"text":"","color":"dark_red","bold":false}]',minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:10511680,show_in_tooltip:0b},minecraft:food={nutrition:0,saturation:0,can_always_eat:true,eat_seconds:0.1}] 1
title @a[scores={po.use.contract=1..}] actionbar [{"selector":"@a[tag=CibleC]","color":"aqua"},{"text":" est la cible de ","color":"dark_purple"},{"selector":"@a[tag=execute]","color":"dark_red"},{"text":" ! ","color":"dark_purple"},{"score":{"name":"time","objective":"po.use.contract"},"color":"gold"},{"text":" secondes restantes","color":"aqua"}]
title @a[tag=CibleC] actionbar ["",{"text":"Tu es la cible de ","color":"blue"},{"selector":"@a[tag=execute]","color":"red"},{"text":" pendant ","color":"blue"},{"score":{"name":"time","objective":"po.use.contract"},"color":"gold"},{"text":" secondes ! ","color":"blue"}]
title @a[tag=execute] actionbar ["",{"score":{"name":"time","objective":"po.use.contract"},"color":"dark_red","bold":false},{"text":" secondes","color":"gold"},{"text":" pour abbatre ","color":"red"},{"selector":"@a[tag=CibleC]","color":"aqua"},{"text":" !","color":"red"}]

execute as @a[scores={po.use.contract=1..}] run execute unless entity @a[tag=execute] run tag @r[scores={po.use.contract=0},tag=!mort,team=!hub] add execute
execute as @a[scores={po.use.contract=1..}] run execute unless entity @a[tag=CibleC] run tag @r[tag=!mort,tag=!execute,team=!hub] add CibleC


execute as @a[scores={po.use.contract=1..2}] run title @a[tag=CibleC] title ["",{"text":"Tu es la cible de ","color":"dark_red"},{"selector":"@a[tag=execute,limit=1]","bold":true,"color":"aqua"}]
execute as @a[scores={po.use.contract=1..2}] run title @a[tag=CibleC] subtitle {"text":"Essaye de ne pas mourir ;)","color":"light_purple"}
execute as @a[scores={po.use.contract=1..}] run execute if score @s po.use.contract matches 19 run title @a[tag=CibleC] clear

execute as @a[scores={po.use.contract=1..2}] run title @a[tag=execute] title ["",{"text":"Tu dois éliminer","color":"gold"},{"text":" ","bold":true,"color":"gold"},{"selector":"@a[tag=CibleC,limit=1]","bold":true,"color":"dark_red"}]
execute as @a[scores={po.use.contract=1..2}] run title @a[tag=execute] subtitle {"text":"Sinon le Maitre Miroir prendra ton âme !","color":"light_purple"}
execute as @a[scores={po.use.contract=1..}] run execute if score @s po.use.contract matches 19 run title @a[tag=execute] clear

execute as @a[scores={po.use.contract=1}] run tellraw @a ["",{"text":"------------------------------------------------","color":"dark_purple"},{"text":"\n"},{"selector":"@a[team=GOD,scores={po.use.contract=1..}]","bold":true,"color":"gray"},{"text":" passe un marché\navec ","bold":true,"color":"red"},{"selector":"@a[tag=execute]","bold":true,"color":"aqua"},{"text":"\n"},{"text":"------------------------------------------------","color":"dark_purple"}]
execute as @a[scores={po.use.contract=1}] run scoreboard players set time po.use.contract 40

execute if entity @a[tag=CibleC] run scoreboard players add @a[scores={po.use.contract=1..}] po.use.contract 1
execute if entity @a[scores={po.use.contract=20..}] run scoreboard players remove time po.use.contract 1
execute as @a[scores={po.use.contract=20..}] run scoreboard players set @s po.use.contract 3


execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run tellraw @a ["",{"text":"------------------------------------------------","color":"dark_purple"},{"text":"\n\n"},{"selector":"@a[tag=execute]","bold":true,"color":"aqua"},{"text":" a rempli ","color":"gold"},{"text":"son po.use.contract","color":"light_purple"},{"text":" !","color":"gold"},{"text":"\n"},{"text":"Le Maître Miroir ","bold":true,"color":"gray"},{"text":"tient parole et respecte les termes","color":"gold"},{"text":" du pacte !","color":"dark_purple"},{"text":"\n"},{"selector":"@a[scores={po.use.contract=1..}]","bold":true,"color":"gray"},{"text":" a perdu une vie !","color":"dark_red"},{"text":"\n\n"},{"text":"------------------------------------------------","color":"dark_purple"}]
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run execute at @a[scores={po.use.contract=1..}] run summon minecraft:lightning_bolt ~ ~ ~
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run tag @a[team=GOD,scores={po.use.contract=1..}] add util
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run execute as @a[tag=execute,scores={po.tech.remaining_lives=..4}] run scoreboard players add @s po.tech.remaining_lives 1
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run scoreboard players remove @a[scores={po.use.contract=1..},limit=1,sort=arbitrary] po.tech.remaining_lives 1
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run scoreboard players set @a[scores={po.use.contract=1..}] po.use.contract 0
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run tag @a[tag=execute] remove execute
execute if score time po.use.contract matches 0.. run execute as @a[tag=CibleC,scores={po.legacy.detectmort=1..}] run tag @a[tag=CibleC] remove CibleC
execute unless entity @a[tag=CibleC] run scoreboard players set time po.use.contract 40


execute if score time po.use.contract matches ..0 run kill @a[tag=execute]
execute if score time po.use.contract matches ..0 run execute at @a[tag=execute] run summon minecraft:lightning_bolt ~ ~ ~
execute if score time po.use.contract matches ..0 run tellraw @a ["",{"text":"---------------------------------------------","bold":true,"color":"dark_purple"},{"text":"\n"},{"selector":"@a[scores={po.use.contract=1..}]","bold":true,"color":"gray"},{"text":" a récupéré son dû !","color":"red"},{"text":" L'âme de ","color":"gold"},{"selector":"@a[tag=execute]","bold":true,"color":"aqua"},{"text":" a quitté son corps...","color":"gold"},{"text":"\n"},{"text":"------------------------------------------------","color":"dark_purple"}]
execute if score time po.use.contract matches ..0 run scoreboard players add @a[scores={po.use.contract=1..}] po.tech.remaining_lives 1
execute if score time po.use.contract matches ..0 run execute as @a[scores={po.use.contract=1..}] run tag @s add util
execute if score time po.use.contract matches ..0 run scoreboard players set @a[scores={po.use.contract=1..}] po.use.contract 0
execute if score time po.use.contract matches ..0 run tag @a[tag=execute] remove execute
execute if score time po.use.contract matches ..0 run tag @a[tag=CibleC] remove CibleC
execute if score time po.use.contract matches ..0 run scoreboard players set time po.use.contract 40

#-----------------------------------------------------------------------------------------------
#po.use.mirror


execute as @a run execute store result score @s po.tech.pos run data get entity @s Rotation[0] 0.043
execute as @a run scoreboard players operation @s po.tech.pos += 8 po.tech.balise


execute store result score nbmirroir po.use.mirror run execute if entity @e[type=minecraft:area_effect_cloud,tag=po.use.mirror]
execute store result score nbGaunter po.use.mirror run execute if entity @a[team=GOD,tag=!mort]
scoreboard players operation nbGaunter po.use.mirror *= 4 po.tech.balise

execute if score nbGaunter po.use.mirror < nbmirroir po.use.mirror run tag @e[type=minecraft:area_effect_cloud,tag=po.use.mirror,sort=arbitrary,limit=1] add supprMirroir
execute at @e[tag=po.use.mirror,tag=supprMirroir] run fill ~ ~ ~ ~ ~1 ~ air replace minecraft:white_banner
execute as @e[tag=po.use.mirror,tag=supprMirroir] run kill @s

execute at @a[scores={po.use.mirror=1..,po.tech.pos=0}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 299 41 99 299 41 99 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=1}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 300 41 99 300 41 99 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=2}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 301 41 99 301 41 99 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=3}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 302 41 99 302 41 99 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=4}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 299 41 98 299 41 98 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=5}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 300 41 98 300 41 98 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=6}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 301 41 98 301 41 98 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=7}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 302 41 98 302 41 98 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=8}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 299 41 97 299 41 97 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=9}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 300 41 97 300 41 97 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=10}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 301 41 97 301 41 97 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=11}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 302 41 97 302 41 97 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=12}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 299 41 96 299 41 96 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=13}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 300 41 96 300 41 96 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=14}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 301 41 96 301 41 96 ~ ~ ~ replace
execute at @a[scores={po.use.mirror=1..,po.tech.pos=15}] run execute at @e[type=vex,sort=nearest,limit=1] run clone 302 41 96 302 41 96 ~ ~ ~ replace

execute at @a[scores={po.use.mirror=1..}] run execute as @e[type=vex,sort=nearest,limit=1] run tag @s add place

#---------------------------------------------------------------------------------------------------------

execute at @e[type=vex,tag=place] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2000000,Tags:["po.use.mirror"]}
execute at @a[scores={po.use.mirror=1..}] run kill @e[type=minecraft:vex,tag=place,limit=1,sort=nearest]
execute as @a[scores={po.use.mirror=1..}] run scoreboard players set @s po.use.mirror 0

execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=0] run data merge entity @s {Rotation:[0f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=1] run data merge entity @s {Rotation:[22.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=2] run data merge entity @s {Rotation:[45f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=3] run data merge entity @s {Rotation:[67.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=4] run data merge entity @s {Rotation:[90f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=5] run data merge entity @s {Rotation:[112.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=6] run data merge entity @s {Rotation:[135f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=7] run data merge entity @s {Rotation:[157.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=8] run data merge entity @s {Rotation:[-180f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=9] run data merge entity @s {Rotation:[-157.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=10] run data merge entity @s {Rotation:[-135f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=11] run data merge entity @s {Rotation:[-112.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=12] run data merge entity @s {Rotation:[-90f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=13] run data merge entity @s {Rotation:[-67.5f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=14] run data merge entity @s {Rotation:[-45f,0f]}
execute as @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute at @s run execute if block ~ ~ ~ minecraft:white_banner[rotation=15] run data merge entity @s {Rotation:[-22.5f,0f]}

execute at @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run execute as @a[team=GOD,distance=..1,tag=!tpF] run tp @s @e[type=minecraft:area_effect_cloud,tag=po.use.mirror,limit=1,sort=random,distance=2..]
execute at @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run tp @a[team=GOD,tag=!tpF,distance=..1] ~ ~0.4 ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=po.use.mirror] run tag @a[team=GOD,tag=!tpF,distance=..1] add tpF

execute as @a[tag=tpF] run scoreboard players add @s po.cd.mirror 1
execute as @a[tag=tpF,scores={po.cd.mirror=100..}] run tag @s remove tpF
execute as @a[tag=!tpF,scores={po.cd.mirror=100..}] run scoreboard players set @s po.cd.mirror 0