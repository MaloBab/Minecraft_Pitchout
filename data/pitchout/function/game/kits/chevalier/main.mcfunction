effect give @a[team=chevalier,scores={po.tech.remaining_lives=2..}] minecraft:speed 99999 3 true
effect give @a[team=chevalier,scores={po.tech.remaining_lives=1}] minecraft:speed 99999 5 true
effect give @a[team=chevalier,scores={po.tech.remaining_lives=1}] minecraft:glowing 99999 3 true
effect clear @a[team=chevalier,scores={po.tech.remaining_lives=2..}] minecraft:glowing

function pitchout:game/kits/chevalier/abilities
function pitchout:game/kits/chevalier/stuff