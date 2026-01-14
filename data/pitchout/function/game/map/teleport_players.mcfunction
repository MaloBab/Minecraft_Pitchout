#point de spawn

execute if score select po.map.vote_id matches 1 run spawnpoint @a[scores={po.tech.remaining_lives=6}] 24 16 7
execute if score select po.map.vote_id matches 2 run spawnpoint @a[scores={po.tech.remaining_lives=6}] 596 46 83
execute if score select po.map.vote_id matches 3 run spawnpoint @a[scores={po.tech.remaining_lives=6}] 1572 46 108
execute if score select po.map.vote_id matches 4 run spawnpoint @a[scores={po.tech.remaining_lives=6}] 465 65 -297

execute if score select po.map.vote_id matches 1 run spreadplayers 6.55 12.44 10 30 false @a[team=hub]
execute if score select po.map.vote_id matches 2 run spreadplayers 587 96 20 30 false @a[team=hub]
execute if score select po.map.vote_id matches 3 run spreadplayers 1572 108 10 80 false @a[team=hub]
execute if score select po.map.vote_id matches 4 run spreadplayers 465 -297 10 80 false @a[team=hub]
