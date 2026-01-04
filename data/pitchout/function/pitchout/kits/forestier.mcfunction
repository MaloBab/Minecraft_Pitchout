#familier
clear @a glass_bottle
execute at @e[type=bee] run execute as @a[distance=..7,gamemode=adventure] run effect give @s pitchout:slowness 2 2
execute at @e[type=bee] run execute as @a[distance=..7,gamemode=adventure] run effect give @s pitchout:nausea 9

execute at @a[team=forestier,scores={familier=2..}] run execute at @a[limit=1,scores={familier=0},gamemode=adventure,sort=random] run summon pitchout:bee ~4 ~1 ~1 {Health:15,Glowing:1b,Silent:1b,active_effects:[{id:wither,duration:-1,amplifier:1,show_particles:0b}],attributes:[{id:"generic.knockback_resistance",base:0.8f},{id:"generic.max_health",base:15f}]}
execute as @a[team=forestier,scores={familier=2..}] run scoreboard players set @s familier 0

#pas de l'ombre
execute as @a[scores={tp=1..}] run tag @s add tp
execute if entity @a[scores={tp=1..}] run execute as @r[scores={tp=0},gamemode=adventure,limit=1] run tag @s add tp
execute at @a[tag=tp] run particle pitchout:dragon_breath ~ ~ ~ 0.5 1.1 0.5 0.05 50 force
execute if score select map matches 1 run execute if entity @a[scores={tp=1..}] run spreadplayers 6.55 12.44 9 50 false @a[tag=tp,limit=2]
execute if score select map matches 2 run execute if entity @a[scores={tp=1..}] run spreadplayers 587 96 5 30 false @a[tag=tp,limit=2]
execute if score select map matches 3 run execute if entity @a[scores={tp=1..}] run spreadplayers 1572 108 5 40 false @a[tag=tp,limit=2]
execute if score select map matches 4 run execute if entity @a[scores={tp=1..}] run spreadplayers 465 -297 5 40 false @a[tag=tp,limit=2]

execute as @a[scores={tp=1..}] run clear @s pitchout:spyglass
execute if entity @a[scores={tp=1..}] run execute as @a[tag=tp] run tag @s remove tp
execute as @a[scores={tp=1..}] run scoreboard players set @s tp 0

#multibow
execute as @a[scores={multibow=1}] run item replace entity @s hotbar.1 with pitchout:bow[pitchout:lore=['[{"text":"Le premier à l avoir utiliser","color":"dark_purple"}]','[{"text":"n a pas compris le principe,","color":"dark_purple"}]','[{"text":"il a frappé son adversaire et","color":"dark_purple"}]','[{"text":"ça a fait","color":"dark_purple"}]','[{"text":"VLAN !!!","color":"dark_red"}]','[{"text":"D où le nom de l arc en fait...","color":"aqua"}]'],pitchout:enchantments={levels:{"pitchout:infinity":1,"pitchout:punch":12,"pitchout:multishot":3},show_in_tooltip:0b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"VLAN amélioré !!!","color":"dark_green","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={multibow=1..}] run scoreboard players add @s multibow 1
execute at @a[scores={multibow=1..}] run particle happy_villager ~ ~2.5 ~ 0 0 0 0.03 1 force @a
execute as @a[scores={multibow=200..}] run item replace entity @s hotbar.1 with pitchout:bow[pitchout:lore=['[{"text":"Le premier à l avoir utiliser","color":"dark_purple"}]','[{"text":"n a pas compris le principe,","color":"dark_purple"}]','[{"text":"il a frappé son adversaire et","color":"dark_purple"}]','[{"text":"ça a fait","color":"dark_purple"}]','[{"text":"VLAN !!!","color":"dark_red"}]','[{"text":"D où le nom de l arc en fait...","color":"aqua"}]'],pitchout:enchantments={levels:{"pitchout:infinity":1,"pitchout:punch":12},show_in_tooltip:0b},pitchout:unbreakable={},pitchout:custom_name='[{"text":"VLAN !!!","color":"dark_purple","bold":true},{"text":"","color":"dark_purple","bold":false}]',pitchout:hide_additional_tooltip={}] 1
execute as @a[scores={multibow=200..}] run scoreboard players set @s multibow 0