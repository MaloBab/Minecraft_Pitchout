effect give @a[team=necromancien] minecraft:speed 99999 3 true

execute as @a[team=necromancien,scores={po.legacy.detectmort=1..}] run effect give @a[scores={po.legacy.detectmort=0}] minecraft:blindness 6 1 true
execute as @a[team=necromancien,scores={po.legacy.detectmort=1..}] run effect give @a[scores={po.legacy.detectmort=0}] minecraft:slowness 5 1 true
execute as @a[team=necromancien,scores={po.legacy.detectmort=1..}] run effect give @a[scores={po.legacy.detectmort=0}] minecraft:glowing 6 1 true
execute as @a[team=necromancien,scores={po.legacy.detectmort=1..}] run effect give @a[scores={po.legacy.detectmort=0}] minecraft:darkness 3 1 true

function pitchout:game/kits/necromancien/abilities
function pitchout:game/kits/necromancien/stuff