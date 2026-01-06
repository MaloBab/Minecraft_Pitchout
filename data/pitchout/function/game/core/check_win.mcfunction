execute store result score nb po.win.detectwin run execute if entity @a[team=!hub,tag=!mort,gamemode=!creative]
execute if score nb po.win.detectwin matches 1 run tag @a[tag=!mort,gamemode=!creative,team=!hub] add victoire
execute if entity @a[tag=victoire] run function pitchout:end/start