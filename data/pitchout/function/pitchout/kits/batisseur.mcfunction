execute as @e[type=minecraft:area_effect_cloud,tag=Gel] run execute store result score @s po.timer.block run data get entity @s Age 1
execute as @e[type=minecraft:area_effect_cloud,tag=blocks] run execute store result score @s po.timer.block run data get entity @s Age 1


#système constru

execute as @a[team=batisseur,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run item replace entity @s weapon.offhand with minecraft:warped_fungus_on_a_stick[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"PLAN DE CONSTRUCTION","bold":true,"color":"gold"}]',minecraft:lore=['[{"text":"Cet item vous permet de poser des blocs","color":"dark_purple"}]','[{"text":"dans la direction de votre regard ","bold":true,"color":"blue"},{"text":"tant que","color":"dark_purple"}]','[{"text":"vous possédez des ","color":"dark_purple"},{"text":"blocs de constructions","bold":true,"color":"gold"}]','[{"text":"2 blocs/sec","bold":true,"color":"dark_red"}]']] 1
execute as @a[team=batisseur,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run item replace entity @s weapon.mainhand with minecraft:air

execute if entity @a[team=!hub,gamemode=!creative] run scoreboard players add timer po.timer.block 1
execute if score timer po.timer.block matches 10 run scoreboard players add @a[team=!hub] po.legacy.qtb 1
execute if score timer po.timer.block matches 11.. run scoreboard players set timer po.timer.block 0

execute as @a[scores={po.legacy.qtb=0..,po.use.build_wand=0},team=batisseur,nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"red"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"po.legacy.qtb"},"color":"gold"}]
execute as @a[scores={po.legacy.qtb=0..,po.use.build_wand=1},team=batisseur,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"green"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"po.legacy.qtb"},"color":"gold"}]
execute as @a[scores={po.legacy.qtb=0..,po.use.build_wand=1},team=batisseur,nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"green"},{"text":" ","color":"green"},{"score":{"name":"@s","objective":"po.legacy.qtb"},"color":"gold"}]
execute as @a[scores={po.legacy.qtb=0..,po.use.build_wand=0},team=batisseur,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick"}}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"red"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"po.legacy.qtb"},"color":"gold"}]


execute at @e[type=minecraft:area_effect_cloud,tag=blocks,scores={po.timer.block=198..}] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:bricks
execute as @a[scores={po.use.build_wand=2..}] run scoreboard players set @s po.use.build_wand 0


execute if score select po.map.vote_id matches 1 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.tech.layer=14..50}] run execute store success score @s po.legacy.poseblock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ minecraft:bricks keep
execute if score select po.map.vote_id matches 1 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.legacy.poseblock=1..,po.tech.layer=14..50}] run execute at @s positioned ^ ^1.3 ^1.9 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}

execute if score select po.map.vote_id matches 2 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.tech.layer=40..76}] run execute store success score @s po.legacy.poseblock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ minecraft:bricks keep
execute if score select po.map.vote_id matches 2 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.legacy.poseblock=1..,po.tech.layer=40..76}] run execute at @s positioned ^ ^1.3 ^1.9 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}

execute if score select po.map.vote_id matches 3 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.tech.layer=40..70}] run execute store success score @s po.legacy.poseblock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ minecraft:bricks keep
execute if score select po.map.vote_id matches 3 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.legacy.poseblock=1..,po.tech.layer=40..70}] run execute at @s positioned ^ ^1.3 ^1.9 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}

execute if score select po.map.vote_id matches 4 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.tech.layer=63..90}] run execute store success score @s po.legacy.poseblock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ minecraft:bricks keep
execute if score select po.map.vote_id matches 4 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:warped_fungus_on_a_stick"}]},scores={po.use.build_wand=1,po.legacy.qtb=1..,po.legacy.poseblock=1..,po.tech.layer=63..90}] run execute at @s positioned ^ ^1.3 ^1.9 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}


execute as @a[scores={po.legacy.poseblock=1..}] run scoreboard players remove @s po.legacy.qtb 1
execute as @a[scores={po.legacy.poseblock=1..}] run scoreboard players set @s po.legacy.poseblock 0


#---------------------------------------------------
#briques supp

execute as @a[scores={po.misc.brick+=1..}] run scoreboard players add @s po.legacy.qtb 32
execute as @a[scores={po.misc.brick+=1..}] run scoreboard players set @s po.misc.brick+ 0

#----------------------------------------------------
#trampoline

execute as @e[type=minecraft:area_effect_cloud,tag=po.misc.slime] run execute store result score @s po.timer.block run data get entity @s Age 1
execute at @e[type=minecraft:area_effect_cloud,tag=po.misc.slime,scores={po.timer.block=98..}] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:honey_block
execute as @a[tag=!mort] run execute at @s run execute if block ~ ~-1 ~ minecraft:honey_block run effect give @s minecraft:jump_boost 2 21 true
execute as @a[tag=!mort] run execute at @s run execute if block ~ ~-1 ~ minecraft:honey_block run effect give @s minecraft:slow_falling 2 0 true
execute as @a[tag=!mort] run execute at @s run execute if block ~ ~-1 ~ minecraft:honey_block run effect give @s minecraft:speed 6 6 true

execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35,}] run summon minecraft:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run summon minecraft:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 1 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=-16..35}] run scoreboard players remove @s po.legacy.qtb 24
execute if score select po.map.vote_id matches 1 run execute as @a[scores={po.misc.slime=1..,po.tech.layer=-16..35}] run scoreboard players set @s po.misc.slime 0


execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run summon minecraft:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 2 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..76}] run scoreboard players remove @s po.legacy.qtb 24
execute if score select po.map.vote_id matches 2 run execute as @a[scores={po.misc.slime=1..,po.tech.layer=20..76}] run scoreboard players set @s po.misc.slime 0

execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run summon minecraft:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 3 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=20..72}] run scoreboard players remove @s po.legacy.qtb 24
execute if score select po.map.vote_id matches 3 run execute as @a[scores={po.misc.slime=1..,po.tech.layer=20..72}] run scoreboard players set @s po.misc.slime 0

execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute at @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run summon minecraft:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["po.misc.slime"]}
execute if score select po.map.vote_id matches 4 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=24..,po.tech.layer=40..90}] run scoreboard players remove @s po.legacy.qtb 24
execute if score select po.map.vote_id matches 4 run execute as @a[scores={po.misc.slime=1..,po.tech.layer=40..90}] run scoreboard players set @s po.misc.slime 0


execute at @e[type=minecraft:area_effect_cloud,tag=po.misc.slime,scores={po.timer.block=..20}] run fill ~ ~ ~ ~ ~ ~ minecraft:honey_block keep
kill @e[type=egg]


execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=..23}] run item replace entity @s hotbar.3 with minecraft:egg[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',minecraft:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=..23}] run scoreboard players set @s po.misc.slime 0

execute if score select po.map.vote_id matches 1 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..-17,po.tech.layer=36..}] run item replace entity @s hotbar.3 with minecraft:egg[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',minecraft:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select po.map.vote_id matches 1 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..-17,po.tech.layer=36..}] run scoreboard players set @s po.misc.slime 0

execute if score select po.map.vote_id matches 2 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..19,po.tech.layer=77..}] run item replace entity @s hotbar.3 with minecraft:egg[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',minecraft:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select po.map.vote_id matches 2 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..19,po.tech.layer=77..}] run scoreboard players set @s po.misc.slime 0

execute if score select po.map.vote_id matches 3 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..19,po.tech.layer=73..}] run item replace entity @s hotbar.3 with minecraft:egg[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',minecraft:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select po.map.vote_id matches 3 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..19,po.tech.layer=73..}] run scoreboard players set @s po.misc.slime 0

execute if score select po.map.vote_id matches 4 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..39,po.tech.layer=91..}] run item replace entity @s hotbar.3 with minecraft:egg[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',minecraft:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select po.map.vote_id matches 4 run execute as @a[scores={po.misc.slime=1..,po.legacy.qtb=23..,po.tech.layer=..39,po.tech.layer=91..}] run scoreboard players set @s po.misc.slime 0

#------------------------------------------------------------------
#gel

execute as @a[scores={po.use.freeze=1..,po.legacy.qtb=..11}] run execute if entity @s[nbt={Inventory:[{id:"minecraft:prismarine_crystals"}]}] run give @s minecraft:prismarine_crystals[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"PRISON DE GLACE","bold":true,"color":"aqua"}]',minecraft:lore=['[{"text":"En jetant cet item au sol, vous emprisonnez le joueur","color":"dark_purple"}]','[{"text":"le plus proche dans la glace","bold":true,"color":"gold"},{"text":" pendant ","color":"dark_purple"},{"text":"3 secondes","color":"aqua"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"12 blocs de construction","bold":true,"color":"gold"},{"text":" pour utiliser l objet","color":"dark_purple"}]']] 1
execute as @a[scores={po.use.freeze=1..,po.legacy.qtb=..11}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:prismarine_crystals"}]}] run item replace entity @s hotbar.4 with minecraft:prismarine_crystals[minecraft:enchantments={levels:{"minecraft:infinity":1},show_in_tooltip:false},minecraft:custom_name='[{"text":"PRISON DE GLACE","bold":true,"color":"aqua"}]',minecraft:lore=['[{"text":"En jetant cet item au sol, vous emprisonnez le joueur","color":"dark_purple"}]','[{"text":"le plus proche dans la glace","bold":true,"color":"gold"},{"text":" pendant ","color":"dark_purple"},{"text":"3 secondes","color":"aqua"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"12 blocs de construction","bold":true,"color":"gold"},{"text":" pour utiliser l objet","color":"dark_purple"}]']] 1


execute at @a[scores={po.use.freeze=1..,po.legacy.qtb=12..}] run execute at @a[scores={po.use.freeze=0},limit=1,sort=nearest,gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:60,Tags:["Gel"]}
execute at @a[scores={po.use.freeze=1..,po.legacy.qtb=12..}] run execute at @e[scores={po.use.freeze=0},limit=1,sort=nearest,gamemode=!spectator] run summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:60,Tags:["Gel"]}
execute at @a[scores={po.use.freeze=1..,po.legacy.qtb=12..}] run execute as @e[scores={po.use.freeze=0},limit=1,sort=nearest,gamemode=!spectator] run effect give @s minecraft:slowness 3 200 true
execute at @a[scores={po.use.freeze=1..,po.legacy.qtb=12..}] run execute as @e[scores={po.use.freeze=0},limit=1,sort=nearest,gamemode=!spectator] run effect give @s minecraft:jump_boost 3 200 true
execute as @a[scores={po.use.freeze=1..,po.legacy.qtb=12..}] run scoreboard players remove @s po.legacy.qtb 12

execute at @e[type=minecraft:area_effect_cloud,tag=Gel,scores={po.timer.block=..2}] run fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow keep
execute at @e[type=minecraft:area_effect_cloud,tag=Gel,scores={po.timer.block=58..}] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:powder_snow

execute as @a[scores={po.use.freeze=1..}] run scoreboard players set @s po.use.freeze 0

