execute as @e[type=pitchout:area_effect_cloud,tag=Gel] run execute store result score @s timeBlock run data get entity @s Age 1
execute as @e[type=pitchout:area_effect_cloud,tag=blocks] run execute store result score @s timeBlock run data get entity @s Age 1


#système constru

execute as @a[team=batisseur,nbt={SelectedItem:{id:"pitchout:warped_fungus_on_a_stick"}}] run item replace entity @s weapon.offhand with pitchout:warped_fungus_on_a_stick[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"PLAN DE CONSTRUCTION","bold":true,"color":"gold"}]',pitchout:lore=['[{"text":"Cet item vous permet de poser des blocs","color":"dark_purple"}]','[{"text":"dans la direction de votre regard ","bold":true,"color":"blue"},{"text":"tant que","color":"dark_purple"}]','[{"text":"vous possédez des ","color":"dark_purple"},{"text":"blocs de constructions","bold":true,"color":"gold"}]','[{"text":"2 blocs/sec","bold":true,"color":"dark_red"}]']] 1
execute as @a[team=batisseur,nbt={SelectedItem:{id:"pitchout:warped_fungus_on_a_stick"}}] run item replace entity @s weapon.mainhand with pitchout:air

execute if entity @a[team=!hub,gamemode=!creative] run scoreboard players add timer timeBlock 1
execute if score timer timeBlock matches 10 run scoreboard players add @a[team=!hub] QTB 1
execute if score timer timeBlock matches 11.. run scoreboard players set timer timeBlock 0

execute as @a[scores={QTB=0..,constru=0},team=batisseur,nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"red"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"QTB"},"color":"gold"}]
execute as @a[scores={QTB=0..,constru=1},team=batisseur,nbt={SelectedItem:{id:"pitchout:warped_fungus_on_a_stick"}}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"green"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"QTB"},"color":"gold"}]
execute as @a[scores={QTB=0..,constru=1},team=batisseur,nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"green"},{"text":" ","color":"green"},{"score":{"name":"@s","objective":"QTB"},"color":"gold"}]
execute as @a[scores={QTB=0..,constru=0},team=batisseur,nbt={SelectedItem:{id:"pitchout:warped_fungus_on_a_stick"}}] run title @s actionbar ["",{"text":"Blocs de construction restants :","color":"red"},{"text":" ","color":"red"},{"score":{"name":"@s","objective":"QTB"},"color":"gold"}]


execute at @e[type=pitchout:area_effect_cloud,tag=blocks,scores={timeBlock=198..}] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:bricks
execute as @a[scores={constru=2..}] run scoreboard players set @s constru 0


execute if score select map matches 1 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,couche=14..50}] run execute store success score @s poseBlock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ pitchout:bricks keep
execute if score select map matches 1 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,poseBlock=1..,couche=14..50}] run execute at @s positioned ^ ^1.3 ^1.9 run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}

execute if score select map matches 2 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,couche=40..76}] run execute store success score @s poseBlock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ pitchout:bricks keep
execute if score select map matches 2 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,poseBlock=1..,couche=40..76}] run execute at @s positioned ^ ^1.3 ^1.9 run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}

execute if score select map matches 3 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,couche=40..70}] run execute store success score @s poseBlock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ pitchout:bricks keep
execute if score select map matches 3 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,poseBlock=1..,couche=40..70}] run execute at @s positioned ^ ^1.3 ^1.9 run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}

execute if score select map matches 4 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,couche=63..90}] run execute store success score @s poseBlock run execute at @s positioned ^ ^1.3 ^1.9 run setblock ~ ~ ~ pitchout:bricks keep
execute if score select map matches 4 run execute as @a[nbt={Inventory:[{Slot:-106b,id:"pitchout:warped_fungus_on_a_stick"}]},scores={constru=1,QTB=1..,poseBlock=1..,couche=63..90}] run execute at @s positioned ^ ^1.3 ^1.9 run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["blocks"]}


execute as @a[scores={poseBlock=1..}] run scoreboard players remove @s QTB 1
execute as @a[scores={poseBlock=1..}] run scoreboard players set @s poseBlock 0


#---------------------------------------------------
#briques supp

execute as @a[scores={brick+=1..}] run scoreboard players add @s QTB 32
execute as @a[scores={brick+=1..}] run scoreboard players set @s brick+ 0

#----------------------------------------------------
#trampoline

execute as @e[type=pitchout:area_effect_cloud,tag=Slime] run execute store result score @s timeBlock run data get entity @s Age 1
execute at @e[type=pitchout:area_effect_cloud,tag=Slime,scores={timeBlock=98..}] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:honey_block
execute as @a[tag=!mort] run execute at @s run execute if block ~ ~-1 ~ pitchout:honey_block run effect give @s pitchout:jump_boost 2 21 true
execute as @a[tag=!mort] run execute at @s run execute if block ~ ~-1 ~ pitchout:honey_block run effect give @s pitchout:slow_falling 2 0 true
execute as @a[tag=!mort] run execute at @s run execute if block ~ ~-1 ~ pitchout:honey_block run effect give @s pitchout:speed 6 6 true

execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35,}] run summon pitchout:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute at @a[scores={slime=1..,QTB=24..,couche=-16..35}] run summon pitchout:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 1 run execute as @a[scores={slime=1..,QTB=24..,couche=-16..35}] run scoreboard players remove @s QTB 24
execute if score select map matches 1 run execute as @a[scores={slime=1..,couche=-16..35}] run scoreboard players set @s slime 0


execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute at @a[scores={slime=1..,QTB=24..,couche=20..76}] run summon pitchout:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 2 run execute as @a[scores={slime=1..,QTB=24..,couche=20..76}] run scoreboard players remove @s QTB 24
execute if score select map matches 2 run execute as @a[scores={slime=1..,couche=20..76}] run scoreboard players set @s slime 0

execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute at @a[scores={slime=1..,QTB=24..,couche=20..72}] run summon pitchout:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 3 run execute as @a[scores={slime=1..,QTB=24..,couche=20..72}] run scoreboard players remove @s QTB 24
execute if score select map matches 3 run execute as @a[scores={slime=1..,couche=20..72}] run scoreboard players set @s slime 0

execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~ ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~ {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~ ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~ ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~-1 ~-4 ~1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute at @a[scores={slime=1..,QTB=24..,couche=40..90}] run summon pitchout:area_effect_cloud ~1 ~-4 ~-1 {Duration:100,Tags:["Slime"]}
execute if score select map matches 4 run execute as @a[scores={slime=1..,QTB=24..,couche=40..90}] run scoreboard players remove @s QTB 24
execute if score select map matches 4 run execute as @a[scores={slime=1..,couche=40..90}] run scoreboard players set @s slime 0


execute at @e[type=pitchout:area_effect_cloud,tag=Slime,scores={timeBlock=..20}] run fill ~ ~ ~ ~ ~ ~ pitchout:honey_block keep
kill @e[type=egg]


execute as @a[scores={slime=1..,QTB=..23}] run item replace entity @s hotbar.3 with pitchout:egg[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',pitchout:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute as @a[scores={slime=1..,QTB=..23}] run scoreboard players set @s slime 0

execute if score select map matches 1 run execute as @a[scores={slime=1..,QTB=23..,couche=..-17,couche=36..}] run item replace entity @s hotbar.3 with pitchout:egg[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',pitchout:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select map matches 1 run execute as @a[scores={slime=1..,QTB=23..,couche=..-17,couche=36..}] run scoreboard players set @s slime 0

execute if score select map matches 2 run execute as @a[scores={slime=1..,QTB=23..,couche=..19,couche=77..}] run item replace entity @s hotbar.3 with pitchout:egg[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',pitchout:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select map matches 2 run execute as @a[scores={slime=1..,QTB=23..,couche=..19,couche=77..}] run scoreboard players set @s slime 0

execute if score select map matches 3 run execute as @a[scores={slime=1..,QTB=23..,couche=..19,couche=73..}] run item replace entity @s hotbar.3 with pitchout:egg[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',pitchout:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select map matches 3 run execute as @a[scores={slime=1..,QTB=23..,couche=..19,couche=73..}] run scoreboard players set @s slime 0

execute if score select map matches 4 run execute as @a[scores={slime=1..,QTB=23..,couche=..39,couche=91..}] run item replace entity @s hotbar.3 with pitchout:egg[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"TRAMPOLINE","bold":true,"color":"green"}]',pitchout:lore=['[{"text":"Fait apparaître ","color":"dark_purple"},{"text":"un trampoline ","bold":true,"color":"green"},{"text":"3 blocks ","bold":true,"color":"gold"}]','[{"text":"en dessous de vous.","color":"gold"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"24 blocs de construction ","bold":true,"color":"gold"},{"text":"pour utiliser l objet","color":"dark_purple"}]']] 1
execute if score select map matches 4 run execute as @a[scores={slime=1..,QTB=23..,couche=..39,couche=91..}] run scoreboard players set @s slime 0

#------------------------------------------------------------------
#gel

execute as @a[scores={gel=1..,QTB=..11}] run execute if entity @s[nbt={Inventory:[{id:"pitchout:prismarine_crystals"}]}] run give @s pitchout:prismarine_crystals[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"PRISON DE GLACE","bold":true,"color":"aqua"}]',pitchout:lore=['[{"text":"En jetant cet item au sol, vous emprisonnez le joueur","color":"dark_purple"}]','[{"text":"le plus proche dans la glace","bold":true,"color":"gold"},{"text":" pendant ","color":"dark_purple"},{"text":"3 secondes","color":"aqua"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"12 blocs de construction","bold":true,"color":"gold"},{"text":" pour utiliser l objet","color":"dark_purple"}]']] 1
execute as @a[scores={gel=1..,QTB=..11}] run execute unless entity @s[nbt={Inventory:[{id:"pitchout:prismarine_crystals"}]}] run item replace entity @s hotbar.4 with pitchout:prismarine_crystals[pitchout:enchantments={levels:{"pitchout:infinity":1},show_in_tooltip:false},pitchout:custom_name='[{"text":"PRISON DE GLACE","bold":true,"color":"aqua"}]',pitchout:lore=['[{"text":"En jetant cet item au sol, vous emprisonnez le joueur","color":"dark_purple"}]','[{"text":"le plus proche dans la glace","bold":true,"color":"gold"},{"text":" pendant ","color":"dark_purple"},{"text":"3 secondes","color":"aqua"}]','[{"text":"Vous devez avoir ","color":"dark_purple"},{"text":"12 blocs de construction","bold":true,"color":"gold"},{"text":" pour utiliser l objet","color":"dark_purple"}]']] 1


execute at @a[scores={gel=1..,QTB=12..}] run execute at @a[scores={gel=0},limit=1,sort=nearest,gamemode=!spectator] run summon pitchout:area_effect_cloud ~ ~ ~ {Duration:60,Tags:["Gel"]}
execute at @a[scores={gel=1..,QTB=12..}] run execute at @e[scores={gel=0},limit=1,sort=nearest,gamemode=!spectator] run summon pitchout:area_effect_cloud ~ ~1 ~ {Duration:60,Tags:["Gel"]}
execute at @a[scores={gel=1..,QTB=12..}] run execute as @e[scores={gel=0},limit=1,sort=nearest,gamemode=!spectator] run effect give @s pitchout:slowness 3 200 true
execute at @a[scores={gel=1..,QTB=12..}] run execute as @e[scores={gel=0},limit=1,sort=nearest,gamemode=!spectator] run effect give @s pitchout:jump_boost 3 200 true
execute as @a[scores={gel=1..,QTB=12..}] run scoreboard players remove @s QTB 12

execute at @e[type=pitchout:area_effect_cloud,tag=Gel,scores={timeBlock=..2}] run fill ~ ~ ~ ~ ~ ~ pitchout:powder_snow keep
execute at @e[type=pitchout:area_effect_cloud,tag=Gel,scores={timeBlock=58..}] run fill ~ ~ ~ ~ ~ ~ air replace pitchout:powder_snow

execute as @a[scores={gel=1..}] run scoreboard players set @s gel 0

