#---------------------------------------------------------------------------------------------------------
#visions de N'Zoth

execute if score eventPartie po.legacy.eventtype matches 6 run execute if entity @a[scores={play=1..,po.timer.titre=1}] run execute as @a[team=hub] run execute store result score @s po.tech.life_vision run random value 1..4
execute if score eventPartie po.legacy.eventtype matches 6 run execute as @a[scores={po.legacy.detectmort=1..,po.tech.global_timer=1},tag=!getVision] run execute if score @s po.tech.remaining_lives = @s po.tech.life_vision run tag @s add visionVIE

execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=0}] po.legacy.randkit run random value 1..4
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=1}] po.legacy.randkit run random value 1..5
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=2}] po.legacy.randkit run random value 1..6
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=3}] po.legacy.randkit run random value 1..7
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=4}] po.legacy.randkit run random value 1..8
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=5}] po.legacy.randkit run random value 1..9
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=6}] po.legacy.randkit run random value 1..10
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=7}] po.legacy.randkit run random value 1..11
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=8}] po.legacy.randkit run random value 1..12
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=9}] po.legacy.randkit run random value 1..13
execute as @a[tag=visionVIE,team=!hub] run execute store result score @s[scores={po.state.kit_id=10..}] po.legacy.randkit run random value 1..14

team join ranger @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=1}]
team join forestier @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=2}]
team join mage @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=3}]
team join guerrier @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=4}]
team join necromancien @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=5}]
team join chevalier @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=6}]
team join chaman @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=7}]
team join druide @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=8}]
team join fantome @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=9}]
team join murloc @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=10}]
team join batisseur @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=11}]
team join assassin @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=12}]
team join Chasseur @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=13}]
team join GOD @a[tag=visionVIE,team=!hub,scores={po.legacy.randkit=14}]

execute as @a[tag=visionVIE,team=!hub] run scoreboard players set @s po.legacy.randkit 0
execute as @a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary,scores={po.tech.global_timer=1}] run scoreboard players add @s po.tech.remaining_lives 1
execute as @a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary] run kill @s
execute as @a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary,scores={po.tech.global_timer=1}] run clear @s



execute as @a[tag=visionVIE,team=ranger,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"RANGER","bold":true,"color":"dark_gray"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=forestier,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"FORESTIER","bold":true,"color":"dark_green"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=mage,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"MAGE","bold":true,"color":"aqua"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=guerrier,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"GUERRIER","bold":true,"color":"red"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=necromancien,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"NECROMANCIEN","bold":true,"color":"black"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=chevalier,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"CHEVALIER","bold":true,"color":"gold"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=chaman,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"CHAMAN","bold":true,"color":"dark_aqua"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=druide,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"DRUIDE","bold":true,"color":"green"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=fantome,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"FANTOME","bold":true,"color":"dark_purple"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=murloc,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"MURLOC","bold":true,"color":"#55FF00"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=batisseur,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"BATISSEUR","bold":true,"color":"#663300"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=assassin,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"ASSASSIN","bold":true,"color":"dark_red"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=Chasseur,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"CHASSEUR DE GROS GIBIER","bold":true,"color":"#0A5C2D"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]
execute as @a[tag=visionVIE,team=GOD,limit=1,sort=arbitrary] run tellraw @a[team=!hub] ["",{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"},{"text":" "},{"selector":"@a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary]"},{"text":" a bénéficié des "},{"text":"Visions de N'Zoth ","bold":true,"color":"dark_purple"},{"text":"et est devenu "},{"text":"MAITRE MIROIR","bold":true,"color":"gray"},{"text":" ! "},{"text":"A","bold":true,"obfuscated":true,"color":"dark_red"}]

execute as @a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary] run tag @s add getVision
execute as @a[tag=visionVIE,team=!hub,limit=1,sort=arbitrary] run tag @s remove visionVIE