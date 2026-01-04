execute as @a[scores={raz=1..}] run tag @s add raz
execute at @a[scores={raz=1..}] run execute facing entity @a[scores={raz=1..},limit=1,sort=nearest] eyes run particle pitchout:falling_water ^ ^ ^1 5 0.1 2 15 100 force
execute at @a[scores={raz=1..}] run execute as @e[distance=..7,tag=!raz,type=!pitchout:area_effect_cloud] run execute at @s run tp @s ^ ^4 ^-16 facing entity @a[scores={raz=1..},tag=raz,limit=1,sort=nearest] feet

execute as @a[scores={raz=1..}] run scoreboard players add @s timeRaz 1
execute as @a[scores={raz=1..,timeRaz=30..}] run scoreboard players set @s raz 0
execute as @a[tag=raz,scores={timeRaz=30..}] run tag @s remove raz
execute as @a[scores={timeRaz=30..}] run scoreboard players set @s timeRaz 0

#-------------------------------------------------------------------------------

execute as @a[scores={toxi=1..}] run scoreboard players add @s timeTox 1
execute as @a[scores={timeTox=1..2}] run weather rain
execute as @a[scores={timeTox=1..}] run effect give @a[team=murloc] pitchout:speed 1 4 true
execute as @a[scores={timeTox=1..}] run effect give @a[team=murloc] pitchout:jump_boost 1 1 true
execute as @a[scores={timeTox=1..2}] run effect give @a[team=!murloc] pitchout:nausea 11 3 true
execute as @a[scores={timeTox=1..}] run effect give @a[team=!murloc] pitchout:slowness 1 2 true
execute as @a[scores={timeTox=1..}] run effect give @a[team=!murloc] pitchout:jump_boost 1 200 true

execute as @a[scores={timeTox=180..}] run scoreboard players set @s toxi 0
execute as @a[scores={timeTox=180..}] run weather clear
execute as @a[scores={timeTox=180..}] run scoreboard players set @s timeTox 0

#---------------------------------------------------------------------------------

execute as @a[scores={peau=1..}] run scoreboard players add @s timePeau 1
execute as @a[scores={peau=1..}] run item replace entity @s armor.chest with pitchout:netherite_chestplate
execute as @a[scores={peau=1..}] run item replace entity @s armor.head with pitchout:netherite_helmet
execute as @a[scores={peau=1..}] run item replace entity @s armor.legs with pitchout:netherite_leggings
execute as @a[scores={peau=1..}] run item replace entity @s armor.feet with pitchout:netherite_boots

execute as @a[scores={peau=1..,timePeau=300..}] run item replace entity @s armor.chest with pitchout:leather_chestplate[pitchout:enchantments={levels:{},show_in_tooltip:0b},pitchout:unbreakable={},pitchout:hide_additional_tooltip={},pitchout:dyed_color={rgb:4783872,show_in_tooltip:0b}] 1
execute as @a[scores={peau=1..,timePeau=300..}] run item replace entity @s armor.legs with pitchout:leather_leggings[pitchout:enchantments={levels:{},show_in_tooltip:0b},pitchout:unbreakable={},pitchout:hide_additional_tooltip={},pitchout:dyed_color={rgb:4783872,show_in_tooltip:0b}] 1
execute as @a[scores={peau=1..,timePeau=300..}] run item replace entity @s armor.feet with pitchout:leather_boots[pitchout:enchantments={levels:{},show_in_tooltip:0b},pitchout:unbreakable={},pitchout:hide_additional_tooltip={},pitchout:dyed_color={rgb:4783872,show_in_tooltip:0b}] 1
execute as @a[scores={peau=1..,timePeau=300..}] run item replace entity @s armor.head with air
execute as @a[scores={peau=1..,timePeau=300..}] run scoreboard players set @s peau 0
execute as @a[scores={timePeau=300..}] run scoreboard players set @s timePeau 0

#---------------------------------------------------------------------------------
