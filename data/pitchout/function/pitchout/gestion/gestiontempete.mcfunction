#----------------------------------------------------------------------

#affichage tempete a effet
execute if score eventPartie eventType matches 3 run execute if entity @a[team=!hub,gamemode=!creative] run scoreboard players add timer timeEffect 1
execute if score timer timeEffect matches 1 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Prochaine ","bold":true,"color":"dark_purple"},{"text":"TEMPÊTE D'EFFET","bold":true,"color":"aqua"},{"text":" dans ","bold":true,"color":"dark_purple"},{"text":"2 minutes 30","bold":true,"color":"green"},{"text":" ! ","bold":true,"color":"dark_purple"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"}]
execute if score timer timeEffect matches 601 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Prochaine ","bold":true,"color":"dark_purple"},{"text":"TEMPÊTE D'EFFET","bold":true,"color":"aqua"},{"text":" dans ","bold":true,"color":"dark_purple"},{"text":"2 minutes","bold":true,"color":"green"},{"text":" ! ","bold":true,"color":"dark_purple"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"}]
execute if score timer timeEffect matches 1801 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Prochaine ","bold":true,"color":"dark_purple"},{"text":"TEMPÊTE D'EFFET","bold":true,"color":"aqua"},{"text":" dans ","bold":true,"color":"dark_purple"},{"text":"1 minutes","bold":true,"color":"green"},{"text":" ! ","bold":true,"color":"dark_purple"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"}]
execute if score timer timeEffect matches 2401 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Prochaine ","bold":true,"color":"dark_purple"},{"text":"TEMPÊTE D'EFFET","bold":true,"color":"aqua"},{"text":" dans ","bold":true,"color":"dark_purple"},{"text":"30 secondes","bold":true,"color":"gold"},{"text":" ! ","bold":true,"color":"dark_purple"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"}]
execute if score timer timeEffect matches 2801 run tellraw @a ["",{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"},{"text":"\n"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":" Prochaine ","bold":true,"color":"dark_purple"},{"text":"TEMPÊTE D'EFFET","bold":true,"color":"aqua"},{"text":" dans ","bold":true,"color":"dark_purple"},{"text":"10 secondes","bold":true,"color":"dark_red"},{"text":" ! ","bold":true,"color":"dark_purple"},{"text":"::::","obfuscated":true,"color":"gold"},{"text":"\n"},{"text":"-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-","bold":true,"color":"dark_blue"}]
execute if score timer timeEffect matches 3000.. run scoreboard players set effet timeEffect 0
execute if score timer timeEffect matches 2999 run execute store result score effet timeEffect run random value 1..8
execute if score timer timeEffect matches 3000.. run scoreboard players set timer timeEffect 3
#----------------------------------------------------------------------

#applicatin des effets

execute if score effet timeEffect matches 8 run effect give @a[team=!hub,tag=!mort] pitchout:slow_falling 30 3 true
execute if score effet timeEffect matches 8 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Chute Lente","bold":true,"color":"dark_green"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]


execute if score effet timeEffect matches 7 run effect give @a[team=!hub,tag=!mort] pitchout:jump_boost 30 3 true
execute if score effet timeEffect matches 7 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Saut Amélioré","bold":true,"color":"dark_green"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]


execute if score effet timeEffect matches 6 run effect give @a[tag=!mort,team=!hub] pitchout:glowing 30 2 true
execute if score effet timeEffect matches 6 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Surbrillance","bold":true,"color":"dark_green"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]

execute if score effet timeEffect matches 5 run effect give @a[tag=!mort,team=!hub] pitchout:speed 30 8 true
execute if score effet timeEffect matches 5 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Vitesse","bold":true,"color":"dark_green"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]

execute if score effet timeEffect matches 4 run effect give @a[tag=!mort,team=!hub] pitchout:slowness 30 2 true
execute if score effet timeEffect matches 4 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Lenteur","bold":true,"color":"dark_red"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]

execute if score effet timeEffect matches 3 run effect give @a[tag=!mort,team=!hub] pitchout:levitation 30 0 true
execute if score effet timeEffect matches 3 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Lévitation","bold":true,"color":"dark_red"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]

execute if score effet timeEffect matches 2 run effect give @a[tag=!mort,team=!hub] pitchout:darkness 30 2 true
execute if score effet timeEffect matches 2 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"Darkness","bold":true,"color":"dark_red"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]

execute if score effet timeEffect matches 1 run effect give @a[tag=!mort,team=!hub] pitchout:nausea 30 2 true
execute if score effet timeEffect matches 1 run tellraw @a[team=!hub] ["",{"text":"La tempête","bold":true,"color":"gold"},{"text":" vous donne ","bold":true,"color":"aqua"},{"text":"La Nausée","bold":true,"color":"dark_red"},{"text":" pendant 30 secondes !","bold":true,"color":"aqua"}]

#----------------------------------------------------------------------