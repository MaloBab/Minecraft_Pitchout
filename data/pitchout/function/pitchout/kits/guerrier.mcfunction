#invulnerabilite

execute if entity @a[team=guerrier,scores={bouclier=1..}] run item replace entity @a[team=guerrier,scores={bouclier=1..}] hotbar.7 with pitchout:totem_of_undying[pitchout:lore=['[{"text":"Impossible pour vous d être repoussé"}]','[{"text":"par quoi que ce soit durant "},{"text":"5 secondes","color":"red"}]','[{"text":"(C est le pouvoir des cookies)","color":"aqua"}]'],pitchout:attribute_modifiers={modifiers:[{type:"pitchout:generic.knockback_resistance",name:"",amount:150,operation:"add_value",id:"generic.knockback_resistance"}]},pitchout:enchantments={levels:{"pitchout:fortune":3},show_in_tooltip:0b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"INVINCIBILITE","color":"red","bold":true},{"text":"","color":"red","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute at @a[scores={bouclier=1..}] run kill @e[type=pitchout:arrow,nbt={ShotFromCrossbow:0b},distance=..3]

execute at @a[scores={bouclier=1..}] run execute as @a[distance=..4,scores={bouclier=0},gamemode=!spectator] run effect give @s pitchout:slowness 2 2

execute if score select map matches 1 run execute at @a[scores={bouclier=1..}] run execute as @a[distance=..4,scores={bouclier=0},tag=!mort] run spreadplayers 6.55 12.44 10 50 false @s
execute if score select map matches 2 run execute at @a[scores={bouclier=1..}] run execute as @a[distance=..4,scores={bouclier=0},tag=!mort] run spreadplayers 587 96 5 30 false @s
execute if score select map matches 3 run execute at @a[scores={bouclier=1..}] run execute as @a[distance=..4,scores={bouclier=0},tag=!mort] run spreadplayers 1572 108 5 40 false @s

execute at @a[scores={bouclier=1..}] run execute at @e[distance=..4,scores={bouclier=0},gamemode=!spectator] run particle pitchout:elder_guardian ~ ~ ~ 0.1 0.1 0.1 2 10 force

execute if entity @a[nbt={Inventory:[{id:"pitchout:totem_of_undying"}]},team=guerrier] run scoreboard players add @a[nbt={Inventory:[{id:"pitchout:totem_of_undying"}]}] invul 1
execute as @a[scores={invul=140..}] run scoreboard players set @s bouclier 0
execute as @a[scores={invul=140..}] run clear @s pitchout:totem_of_undying
execute as @a[scores={invul=140}] run scoreboard players set @s invul 0

#-------------------------------------------------------------------------------------
#fus roh dah

clear @a[team=guerrier] crossbow[charged_projectiles=[]]
execute as @a[scores={arti=1..}] run tag @s add rocket
execute at @e[type=pitchout:firework_rocket,nbt={ShotAtAngle:1b}] run execute as @e[tag=!rocket,type=!pitchout:firework_rocket,type=!area_effect_cloud,type=!armor_stand,distance=..5,tag=!mort] run tp @s ~1 ~ ~1
execute at @e[type=pitchout:firework_rocket,nbt={ShotAtAngle:1b}] run execute as @e[type=armor_stand,tag=TOTEM,distance=..5] run tp @s ~1 ~ ~1
execute as @a[scores={arti=1..}] run scoreboard players add @s rocket 1
execute as @a[scores={arti=1..,rocket=20..}] run scoreboard players set @s arti 0
execute as @a[scores={rocket=20..}] run tag @s remove rocket
execute as @a[scores={rocket=20..}] run scoreboard players set @s rocket 0

#-------------------------------------------------------------------------------------
#Rage sangunaire
execute as @a[scores={RageS=1}] run effect give @s speed 15 3
execute at @a[scores={RageS=1..}] run particle crit ~ ~ ~ 0.2 1.5 0.2 0.7 40 force @a
execute as @a[scores={RageS=1..299}] run attribute @s generic.knockback_resistance base set 0.4
execute as @a[scores={RageS=1..299}] run attribute @s player.entity_interaction_range base set 9
execute as @a[scores={RageS=1..299}] run scoreboard players add @s RageS 1
execute as @a[scores={RageS=300..}] run attribute @s generic.knockback_resistance base set 0
execute as @a[scores={RageS=300..}] run attribute @s player.entity_interaction_range base set 5
execute as @a[scores={RageS=300..}] run scoreboard players set @s RageS 0
