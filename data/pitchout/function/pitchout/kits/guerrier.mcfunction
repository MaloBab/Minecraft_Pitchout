#invulnerabilite

execute as @a[team=guerrier,scores={po.use.shield_cookie=1..}] run item replace entity @s hotbar.7 with minecraft:totem_of_undying[minecraft:custom_name='{"text":"INVINCIBILITE","color":"red","bold":true}',minecraft:lore=['{"text":"Impossible pour vous d\'être repoussé"}','[{"text":"par quoi que ce soit durant "},{"text":"5 secondes","color":"red"}]','{"text":"(C\'est le pouvoir des cookies)","color":"aqua"}'],minecraft:attribute_modifiers={modifiers:[{id:"pitchout:cookie_kb",type:"minecraft:generic.knockback_resistance",amount:1.0,operation:"add_value",slot:"hand"}],show_in_tooltip:false},minecraft:enchantments={levels:{"minecraft:fortune":3},show_in_tooltip:false},minecraft:unbreakable={show_in_tooltip:false}] 1
execute at @a[scores={po.use.shield_cookie=1..}] run kill @e[type=minecraft:arrow,distance=..3,nbt=!{weapon:{id:"minecraft:crossbow"}}]

execute at @a[scores={po.use.shield_cookie=1..}] run execute as @a[distance=..4,scores={po.use.shield_cookie=0},gamemode=!spectator] run effect give @s minecraft:slowness 2 2

execute if score select po.map.vote_id matches 1 run execute at @a[scores={po.use.shield_cookie=1..}] run execute as @a[distance=..4,scores={po.use.shield_cookie=0},tag=!mort] run spreadplayers 6.55 12.44 10 50 false @s
execute if score select po.map.vote_id matches 2 run execute at @a[scores={po.use.shield_cookie=1..}] run execute as @a[distance=..4,scores={po.use.shield_cookie=0},tag=!mort] run spreadplayers 587 96 5 30 false @s
execute if score select po.map.vote_id matches 3 run execute at @a[scores={po.use.shield_cookie=1..}] run execute as @a[distance=..4,scores={po.use.shield_cookie=0},tag=!mort] run spreadplayers 1572 108 5 40 false @s

execute at @a[scores={po.use.shield_cookie=1..}] run execute at @e[distance=..4,scores={po.use.shield_cookie=0},gamemode=!spectator] run particle minecraft:elder_guardian ~ ~ ~ 0.1 0.1 0.1 2 10 force

execute if entity @a[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]},team=guerrier] run scoreboard players add @a[nbt={Inventory:[{id:"minecraft:totem_of_undying"}]}] po.tech.invulnerable 1
execute as @a[scores={po.tech.invulnerable=140..}] run scoreboard players set @s po.use.shield_cookie 0
execute as @a[scores={po.tech.invulnerable=140..}] run clear @s minecraft:totem_of_undying
execute as @a[scores={po.tech.invulnerable=140}] run scoreboard players set @s po.tech.invulnerable 0

#-------------------------------------------------------------------------------------
#fus roh dah

clear @a[team=guerrier] crossbow[charged_projectiles=[]]
execute as @a[scores={po.use.crossbow_arti=1..}] run tag @s add po.legacy.rocket
execute at @e[type=minecraft:firework_rocket,nbt={ShotAtAngle:1b}] run execute as @e[tag=!po.legacy.rocket,type=!minecraft:firework_rocket,type=!area_effect_cloud,type=!armor_stand,distance=..5,tag=!mort] run tp @s ~1 ~ ~1
execute at @e[type=minecraft:firework_rocket,nbt={ShotAtAngle:1b}] run execute as @e[type=armor_stand,tag=TOTEM,distance=..5] run tp @s ~1 ~ ~1
execute as @a[scores={po.use.crossbow_arti=1..}] run scoreboard players add @s po.legacy.rocket 1
execute as @a[scores={po.use.crossbow_arti=1..,po.legacy.rocket=20..}] run scoreboard players set @s po.use.crossbow_arti 0
execute as @a[scores={po.legacy.rocket=20..}] run tag @s remove po.legacy.rocket
execute as @a[scores={po.legacy.rocket=20..}] run scoreboard players set @s po.legacy.rocket 0

#-------------------------------------------------------------------------------------
#Rage sangunaire
execute as @a[scores={po.use.rage=1}] run effect give @s speed 15 3
execute at @a[scores={po.use.rage=1..}] run particle crit ~ ~ ~ 0.2 1.5 0.2 0.7 40 force @a
execute as @a[scores={po.use.rage=1..299}] run attribute @s generic.knockback_resistance base set 0.4
execute as @a[scores={po.use.rage=1..299}] run attribute @s player.entity_interaction_range base set 9
execute as @a[scores={po.use.rage=1..299}] run scoreboard players add @s po.use.rage 1
execute as @a[scores={po.use.rage=300..}] run attribute @s generic.knockback_resistance base set 0
execute as @a[scores={po.use.rage=300..}] run attribute @s player.entity_interaction_range base set 5
execute as @a[scores={po.use.rage=300..}] run scoreboard players set @s po.use.rage 0
