execute as @a[scores={po.use.raz=1..}] run tag @s add po.use.raz
execute at @a[scores={po.use.raz=1..}] run execute facing entity @a[scores={po.use.raz=1..},limit=1,sort=nearest] eyes run particle minecraft:falling_water ^ ^ ^1 5 0.1 2 15 100 force
execute at @a[scores={po.use.raz=1..}] run execute as @e[distance=..7,tag=!po.use.raz,type=!minecraft:area_effect_cloud] run execute at @s run tp @s ^ ^4 ^-16 facing entity @a[scores={po.use.raz=1..},tag=po.use.raz,limit=1,sort=nearest] feet

execute as @a[scores={po.use.raz=1..}] run scoreboard players add @s po.cd.raz 1
execute as @a[scores={po.use.raz=1..,po.cd.raz=30..}] run scoreboard players set @s po.use.raz 0
execute as @a[tag=po.use.raz,scores={po.cd.raz=30..}] run tag @s remove po.use.raz
execute as @a[scores={po.cd.raz=30..}] run scoreboard players set @s po.cd.raz 0

#-------------------------------------------------------------------------------

execute as @a[scores={po.use.toxic=1..}] run scoreboard players add @s po.cd.toxic 1
execute as @a[scores={po.cd.toxic=1..2}] run weather rain
execute as @a[scores={po.cd.toxic=1..}] run effect give @a[team=murloc] minecraft:speed 1 4 true
execute as @a[scores={po.cd.toxic=1..}] run effect give @a[team=murloc] minecraft:jump_boost 1 1 true
execute as @a[scores={po.cd.toxic=1..2}] run effect give @a[team=!murloc] minecraft:nausea 11 3 true
execute as @a[scores={po.cd.toxic=1..}] run effect give @a[team=!murloc] minecraft:slowness 1 2 true
execute as @a[scores={po.cd.toxic=1..}] run effect give @a[team=!murloc] minecraft:jump_boost 1 200 true

execute as @a[scores={po.cd.toxic=180..}] run scoreboard players set @s po.use.toxic 0
execute as @a[scores={po.cd.toxic=180..}] run weather clear
execute as @a[scores={po.cd.toxic=180..}] run scoreboard players set @s po.cd.toxic 0

#---------------------------------------------------------------------------------

execute as @a[scores={po.use.peau=1..}] run scoreboard players add @s po.cd.peau 1
execute as @a[scores={po.use.peau=1..}] run item replace entity @s armor.chest with minecraft:netherite_chestplate
execute as @a[scores={po.use.peau=1..}] run item replace entity @s armor.head with minecraft:netherite_helmet
execute as @a[scores={po.use.peau=1..}] run item replace entity @s armor.legs with minecraft:netherite_leggings
execute as @a[scores={po.use.peau=1..}] run item replace entity @s armor.feet with minecraft:netherite_boots

execute as @a[scores={po.use.peau=1..,po.cd.peau=300..}] run item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:4783872,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.peau=1..,po.cd.peau=300..}] run item replace entity @s armor.legs with minecraft:leather_leggings[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:4783872,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.peau=1..,po.cd.peau=300..}] run item replace entity @s armor.feet with minecraft:leather_boots[minecraft:enchantments={levels:{},show_in_tooltip:0b},minecraft:unbreakable={},minecraft:hide_additional_tooltip={},minecraft:dyed_color={rgb:4783872,show_in_tooltip:0b}] 1
execute as @a[scores={po.use.peau=1..,po.cd.peau=300..}] run item replace entity @s armor.head with air
execute as @a[scores={po.use.peau=1..,po.cd.peau=300..}] run scoreboard players set @s po.use.peau 0
execute as @a[scores={po.cd.peau=300..}] run scoreboard players set @s po.cd.peau 0

#---------------------------------------------------------------------------------
