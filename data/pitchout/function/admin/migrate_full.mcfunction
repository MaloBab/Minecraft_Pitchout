# =================================================================
# PITCHOUT - MIGRATION COMPLETE (100% COVERAGE)
# =================================================================
tellraw @a[tag=admin] ["",{"text":"[Pitchout] ","color":"gold"},{"text":"Migration massive en cours...","color":"yellow"}]


# advBarroud -> po.adv.barroud (dummy)
scoreboard objectives add po.adv.barroud dummy
scoreboard players set Babiblaster po.adv.barroud 0
scoreboard players set Archibald po.adv.barroud 0
scoreboard players set Askepios po.adv.barroud 0
scoreboard players set Browis po.adv.barroud 0
# sneak -> po.stat.sneak (minecraft.custom:minecraft.sneak_time)
scoreboard objectives add po.stat.sneak minecraft.custom:minecraft.sneak_time
scoreboard players set Browis po.stat.sneak 3
scoreboard players set Babiblaster po.stat.sneak 0
scoreboard players set Archibald po.stat.sneak 0
scoreboard players set Askepios po.stat.sneak 0
# aimant -> po.use.magnet (minecraft.dropped:minecraft.quartz)
scoreboard objectives add po.use.magnet minecraft.dropped:minecraft.quartz
scoreboard players set Babiblaster po.use.magnet 0
scoreboard players set Archibald po.use.magnet 0
scoreboard players set Askepios po.use.magnet 0
scoreboard players set Browis po.use.magnet 0
# cthunEye -> po.misc.cthuneye (minecraft.dropped:minecraft.ender_eye)
scoreboard objectives add po.misc.cthuneye minecraft.dropped:minecraft.ender_eye
scoreboard players set Babiblaster po.misc.cthuneye 0
scoreboard players set Archibald po.misc.cthuneye 0
scoreboard players set Askepios po.misc.cthuneye 0
scoreboard players set Browis po.misc.cthuneye 0
# slime -> po.misc.slime (minecraft.used:minecraft.egg)
scoreboard objectives add po.misc.slime minecraft.used:minecraft.egg
# timer -> po.tech.global_timer (dummy)
scoreboard objectives add po.tech.global_timer dummy
scoreboard players set itemselec po.tech.global_timer 1
scoreboard players set itemselect po.tech.global_timer 1
scoreboard players set Babiblaster po.tech.global_timer 0
scoreboard players set Archibald po.tech.global_timer 0
scoreboard players set Askepios po.tech.global_timer 0
scoreboard players set debut po.tech.global_timer 0
scoreboard players set hub po.tech.global_timer 0
scoreboard players set objet po.tech.global_timer 0
scoreboard players set Browis po.tech.global_timer 0
# timeRac -> po.cd.racine (dummy)
scoreboard objectives add po.cd.racine dummy
scoreboard players set Babiblaster po.cd.racine 0
scoreboard players set Archibald po.cd.racine 0
scoreboard players set Askepios po.cd.racine 0
scoreboard players set Browis po.cd.racine 0
# achatAss -> po.shop.assassin (dummy)
scoreboard objectives add po.shop.assassin dummy
scoreboard players set Babiblaster po.shop.assassin 0
# cible -> po.misc.cible (minecraft.custom:minecraft.target_hit)
scoreboard objectives add po.misc.cible minecraft.custom:minecraft.target_hit
scoreboard players set Babiblaster po.misc.cible 0
scoreboard players set Archibald po.misc.cible 0
scoreboard players set Askepios po.misc.cible 0
scoreboard players set Browis po.misc.cible 0
# intangibilite -> po.use.intangible (minecraft.used:minecraft.experience_bottle)
scoreboard objectives add po.use.intangible minecraft.used:minecraft.experience_bottle
scoreboard players set Babiblaster po.use.intangible 0
scoreboard players set Archibald po.use.intangible 0
scoreboard players set Askepios po.use.intangible 0
scoreboard players set Browis po.use.intangible 0
# mirroir -> po.use.mirror (minecraft.used:minecraft.vex_spawn_egg)
scoreboard objectives add po.use.mirror minecraft.used:minecraft.vex_spawn_egg
scoreboard players set Babiblaster po.use.mirror 0
scoreboard players set Archibald po.use.mirror 0
scoreboard players set Askepios po.use.mirror 0
scoreboard players set nbmirroir po.use.mirror 0
scoreboard players set nbGaunter po.use.mirror 0
scoreboard players set Browis po.use.mirror 0
# timeProtect -> po.cd.protect (dummy)
scoreboard objectives add po.cd.protect dummy
scoreboard players set Babiblaster po.cd.protect 0
scoreboard players set Archibald po.cd.protect 0
scoreboard players set Askepios po.cd.protect 0
scoreboard players set Browis po.cd.protect 0
# mort -> po.stat.deaths_match (deathCount)
scoreboard objectives add po.stat.deaths_match deathCount
scoreboard players set Babiblaster po.stat.deaths_match 3
scoreboard players set Archibald po.stat.deaths_match 0
scoreboard players set Askepios po.stat.deaths_match 0
scoreboard players set Browis po.stat.deaths_match 0
# trident -> po.use.trident (minecraft.used:minecraft.trident)
scoreboard objectives add po.use.trident minecraft.used:minecraft.trident
# sonEnder0 -> po.sound.enderpearl0 (dummy)
scoreboard objectives add po.sound.enderpearl0 dummy
scoreboard players set Babiblaster po.sound.enderpearl0 0
# menu -> po.ui.kit_menu (dummy)
scoreboard objectives add po.ui.kit_menu dummy
scoreboard players set Babiblaster po.ui.kit_menu 0
scoreboard players set Archibald po.ui.kit_menu 0
scoreboard players set Askepios po.ui.kit_menu 0
scoreboard players set Browis po.ui.kit_menu 0
# randomXal -> po.legacy.randomxal (dummy)
scoreboard objectives add po.legacy.randomxal dummy
# lifeTourelle -> po.tech.life_turret (dummy)
scoreboard objectives add po.tech.life_turret dummy
scoreboard players set Babiblaster po.tech.life_turret 0
scoreboard players set Archibald po.tech.life_turret 0
scoreboard players set Askepios po.tech.life_turret 0
scoreboard players set Browis po.tech.life_turret 0
# vie -> po.tech.remaining_lives (dummy)
scoreboard objectives add po.tech.remaining_lives dummy
scoreboard players set . po.tech.remaining_lives 10
scoreboard players set -_-_-_-_-_-_- po.tech.remaining_lives 10
scoreboard players set Babiblaster po.tech.remaining_lives 6
scoreboard players set Archibald po.tech.remaining_lives 6
scoreboard players set Askepios po.tech.remaining_lives 5
scoreboard players set Browis po.tech.remaining_lives 5
scoreboard players set .. po.tech.remaining_lives -1
scoreboard players set ------------- po.tech.remaining_lives -2
# PlayerTimer -> po.timer.playertimer (dummy)
scoreboard objectives add po.timer.playertimer dummy
scoreboard players set Babiblaster po.timer.playertimer 0
scoreboard players set Archibald po.timer.playertimer 0
scoreboard players set Askepios po.timer.playertimer 0
scoreboard players set Browis po.timer.playertimer 0
# nbconnection -> po.stat.joins (dummy)
scoreboard objectives add po.stat.joins dummy
scoreboard players set Babiblaster po.stat.joins 6
scoreboard players set Archibald po.stat.joins 2
scoreboard players set Askepios po.stat.joins 1
scoreboard players set Browis po.stat.joins 1
# sonEnder1 -> po.sound.enderpearl1 (dummy)
scoreboard objectives add po.sound.enderpearl1 dummy
scoreboard players set Babiblaster po.sound.enderpearl1 0
# medaillon -> po.misc.medaillon (minecraft.dropped:minecraft.nautilus_shell)
scoreboard objectives add po.misc.medaillon minecraft.dropped:minecraft.nautilus_shell
# menumap -> po.ui.map_menu (dummy)
scoreboard objectives add po.ui.map_menu dummy
scoreboard players set Babiblaster po.ui.map_menu 0
scoreboard players set Archibald po.ui.map_menu 0
scoreboard players set Askepios po.ui.map_menu 0
scoreboard players set Browis po.ui.map_menu 0
# timeIntan -> po.cd.intangible (dummy)
scoreboard objectives add po.cd.intangible dummy
# vicDruide -> po.win.druide (dummy)
scoreboard objectives add po.win.druide dummy
scoreboard players set Babiblaster po.win.druide 0
scoreboard players set Archibald po.win.druide 0
scoreboard players set Askepios po.win.druide 0
scoreboard players set Browis po.win.druide 0
# cosForestier -> po.cos.forestier (dummy)
scoreboard objectives add po.cos.forestier dummy
scoreboard players set Babiblaster po.cos.forestier 0
scoreboard players set Archibald po.cos.forestier 0
scoreboard players set Askepios po.cos.forestier 0
scoreboard players set Browis po.cos.forestier 0
# cristalVie -> po.use.life_crystal (minecraft.used:minecraft.amethyst_shard)
scoreboard objectives add po.use.life_crystal minecraft.used:minecraft.amethyst_shard
# charge -> po.use.charge (minecraft.used:minecraft.raw_gold)
scoreboard objectives add po.use.charge minecraft.used:minecraft.raw_gold
scoreboard players set Babiblaster po.use.charge 0
scoreboard players set Archibald po.use.charge 0
scoreboard players set Askepios po.use.charge 0
scoreboard players set Browis po.use.charge 0
# kit -> po.state.kit_id (dummy)
scoreboard objectives add po.state.kit_id dummy
scoreboard players set Babiblaster po.state.kit_id 11
scoreboard players set Askepios po.state.kit_id 11
scoreboard players set Browis po.state.kit_id 11
scoreboard players set Archibald po.state.kit_id 0
# familier -> po.use.familiar (minecraft.used:minecraft.honey_bottle)
scoreboard objectives add po.use.familiar minecraft.used:minecraft.honey_bottle
scoreboard players set Babiblaster po.use.familiar 0
scoreboard players set Archibald po.use.familiar 0
scoreboard players set Askepios po.use.familiar 0
scoreboard players set Browis po.use.familiar 0
# fishing -> po.use.rod (minecraft.used:minecraft.fishing_rod)
scoreboard objectives add po.use.rod minecraft.used:minecraft.fishing_rod
scoreboard players set Babiblaster po.use.rod 0
scoreboard players set Archibald po.use.rod 0
scoreboard players set Askepios po.use.rod 0
scoreboard players set Browis po.use.rod 0
# balise -> po.tech.balise (dummy)
scoreboard objectives add po.tech.balise dummy
scoreboard players set 20 po.tech.balise 20
scoreboard players set 19 po.tech.balise 19
scoreboard players set 17 po.tech.balise 17
scoreboard players set 13 po.tech.balise 13
scoreboard players set 11 po.tech.balise 11
scoreboard players set 8 po.tech.balise 8
scoreboard players set 7 po.tech.balise 7
scoreboard players set 5 po.tech.balise 5
scoreboard players set 4 po.tech.balise 4
scoreboard players set 3 po.tech.balise 3
scoreboard players set 2 po.tech.balise 2
scoreboard players set nbBullet po.tech.balise 0
scoreboard players set 0 po.tech.balise 0
# couche -> po.tech.layer (dummy)
scoreboard objectives add po.tech.layer dummy
scoreboard players set 1e776ee8-916e-4af3-9717-d0d8fcf2a970 po.tech.layer 179
scoreboard players set f43a4f6a-5c3c-4133-afa5-ba3b9e142d6c po.tech.layer 159
scoreboard players set b3bb1b1e-d2d8-456c-bd10-46108a4b918e po.tech.layer 77
scoreboard players set ae5b4b27-fe6d-4b3f-b7e7-60153be6881c po.tech.layer 74
scoreboard players set b4510cab-0687-46f1-b038-42cf4fbd8999 po.tech.layer 58
scoreboard players set c1b545e2-b621-4c30-9ac5-faff315a88c1 po.tech.layer 52
scoreboard players set Babiblaster po.tech.layer 48
scoreboard players set Archibald po.tech.layer 48
scoreboard players set 6fcf20c7-f350-44ad-b9e4-05a2ab43a60f po.tech.layer 44
scoreboard players set 17843de1-961f-40cc-811b-dea31243c71d po.tech.layer 44
scoreboard players set Askepios po.tech.layer 16
scoreboard players set Browis po.tech.layer 16
scoreboard players set e8233ee2-a34b-4930-9db6-c1d3ae7806d4 po.tech.layer -73
# controle -> po.use.control (minecraft.used:minecraft.golden_carrot)
scoreboard objectives add po.use.control minecraft.used:minecraft.golden_carrot
scoreboard players set Babiblaster po.use.control 0
scoreboard players set Archibald po.use.control 0
scoreboard players set Askepios po.use.control 0
scoreboard players set Browis po.use.control 0
# nether -> po.shovel.netherite (dummy)
scoreboard objectives add po.shovel.netherite dummy
scoreboard players set Babiblaster po.shovel.netherite 0
scoreboard players set Archibald po.shovel.netherite 0
scoreboard players set Askepios po.shovel.netherite 0
scoreboard players set Browis po.shovel.netherite 0
# pelle1 -> po.model.pelle1 (dummy)
scoreboard objectives add po.model.pelle1 dummy
scoreboard players set Babiblaster po.model.pelle1 0
scoreboard players set Archibald po.model.pelle1 0
scoreboard players set Askepios po.model.pelle1 0
scoreboard players set Browis po.model.pelle1 0
# map2b -> po.map.res2 (dummy)
scoreboard objectives add po.map.res2 dummy
scoreboard players set Babiblaster po.map.res2 0
scoreboard players set Archibald po.map.res2 0
scoreboard players set total po.map.res2 0
scoreboard players set Askepios po.map.res2 0
scoreboard players set Browis po.map.res2 0
# druide -> po.kit.druide (dummy)
scoreboard objectives add po.kit.druide dummy
scoreboard players set Babiblaster po.kit.druide 0
scoreboard players set Archibald po.kit.druide 0
scoreboard players set Askepios po.kit.druide 0
scoreboard players set Browis po.kit.druide 0
# assassinat -> po.use.assassinate (minecraft.used:minecraft.lingering_potion)
scoreboard objectives add po.use.assassinate minecraft.used:minecraft.lingering_potion
# position -> po.tech.pos_hp (health)
scoreboard objectives add po.tech.pos_hp health
scoreboard players set Babiblaster po.tech.pos_hp 20
scoreboard players set Archibald po.tech.pos_hp 20
scoreboard players set Askepios po.tech.pos_hp 20
scoreboard players set Browis po.tech.pos_hp 20
# mareenoire -> po.use.black_tide (minecraft.used:minecraft.charcoal)
scoreboard objectives add po.use.black_tide minecraft.used:minecraft.charcoal
scoreboard players set Babiblaster po.use.black_tide 0
scoreboard players set Archibald po.use.black_tide 0
scoreboard players set Askepios po.use.black_tide 0
scoreboard players set Browis po.use.black_tide 0
# rocket -> po.legacy.rocket (dummy)
scoreboard objectives add po.legacy.rocket dummy
scoreboard players set Babiblaster po.legacy.rocket 0
scoreboard players set Archibald po.legacy.rocket 0
scoreboard players set Askepios po.legacy.rocket 0
scoreboard players set Browis po.legacy.rocket 0
# map2 -> po.map.v2 (dummy)
scoreboard objectives add po.map.v2 dummy
scoreboard players set Babiblaster po.map.v2 0
scoreboard players set Askepios po.map.v2 0
scoreboard players set Browis po.map.v2 0
# constru -> po.use.build_wand (minecraft.used:minecraft.warped_fungus_on_a_stick)
scoreboard objectives add po.use.build_wand minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard players set Babiblaster po.use.build_wand 0
scoreboard players set Archibald po.use.build_wand 0
scoreboard players set Askepios po.use.build_wand 0
scoreboard players set Browis po.use.build_wand 0
# fant -> po.shop.fantome (dummy)
scoreboard objectives add po.shop.fantome dummy
scoreboard players set Babiblaster po.shop.fantome 0
scoreboard players set Archibald po.shop.fantome 0
scoreboard players set Askepios po.shop.fantome 0
scoreboard players set Browis po.shop.fantome 0
# equipLassoSon -> po.cos.sound.equiplasso (dummy)
scoreboard objectives add po.cos.sound.equiplasso dummy
scoreboard players set Babiblaster po.cos.sound.equiplasso 0
scoreboard players set Archibald po.cos.sound.equiplasso 0
scoreboard players set Askepios po.cos.sound.equiplasso 0
scoreboard players set Browis po.cos.sound.equiplasso 0
# fumi -> po.use.smoke (minecraft.used:minecraft.snowball)
scoreboard objectives add po.use.smoke minecraft.used:minecraft.snowball
# chevalier -> po.kit.chevalier (dummy)
scoreboard objectives add po.kit.chevalier dummy
scoreboard players set Babiblaster po.kit.chevalier 0
scoreboard players set Archibald po.kit.chevalier 0
scoreboard players set Askepios po.kit.chevalier 0
scoreboard players set Browis po.kit.chevalier 0
# murloc -> po.kit.murloc (dummy)
scoreboard objectives add po.kit.murloc dummy
scoreboard players set Babiblaster po.kit.murloc 0
scoreboard players set Archibald po.kit.murloc 0
scoreboard players set Askepios po.kit.murloc 0
scoreboard players set Browis po.kit.murloc 0
# glasDivin -> po.use.bell (minecraft.custom:minecraft.bell_ring)
scoreboard objectives add po.use.bell minecraft.custom:minecraft.bell_ring
scoreboard players set Babiblaster po.use.bell 0
scoreboard players set Archibald po.use.bell 0
scoreboard players set Askepios po.use.bell 0
scoreboard players set Browis po.use.bell 0
# pelle4 -> po.model.pelle4 (dummy)
scoreboard objectives add po.model.pelle4 dummy
scoreboard players set Babiblaster po.model.pelle4 0
scoreboard players set Archibald po.model.pelle4 0
scoreboard players set Askepios po.model.pelle4 0
scoreboard players set Browis po.model.pelle4 0
# nbPlan1 -> po.ctf.flag1 (minecraft.picked_up:minecraft.creeper_banner_pattern)
scoreboard objectives add po.ctf.flag1 minecraft.picked_up:minecraft.creeper_banner_pattern
scoreboard players set Babiblaster po.ctf.flag1 0
scoreboard players set Archibald po.ctf.flag1 0
scoreboard players set Askepios po.ctf.flag1 0
scoreboard players set Browis po.ctf.flag1 0
# map3b -> po.map.res3 (dummy)
scoreboard objectives add po.map.res3 dummy
scoreboard players set Babiblaster po.map.res3 0
scoreboard players set Archibald po.map.res3 0
scoreboard players set total po.map.res3 0
scoreboard players set Askepios po.map.res3 0
scoreboard players set Browis po.map.res3 0
# pierre -> po.shovel.stone (dummy)
scoreboard objectives add po.shovel.stone dummy
scoreboard players set Babiblaster po.shovel.stone 0
scoreboard players set Archibald po.shovel.stone 0
scoreboard players set Askepios po.shovel.stone 0
scoreboard players set Browis po.shovel.stone 0
# Cfleche -> po.legacy.cfleche (dummy)
scoreboard objectives add po.legacy.cfleche dummy
scoreboard players set Babiblaster po.legacy.cfleche 2
scoreboard players set Browis po.legacy.cfleche 2
scoreboard players set Archibald po.legacy.cfleche 0
scoreboard players set Askepios po.legacy.cfleche 0
# crossbow -> po.use.crossbow (minecraft.used:minecraft.crossbow)
scoreboard objectives add po.use.crossbow minecraft.used:minecraft.crossbow
scoreboard players set Babiblaster po.use.crossbow 0
scoreboard players set Archibald po.use.crossbow 0
scoreboard players set Askepios po.use.crossbow 0
scoreboard players set Browis po.use.crossbow 0
# DetectMort -> po.legacy.detectmort (deathCount)
scoreboard objectives add po.legacy.detectmort deathCount
scoreboard players set Babiblaster po.legacy.detectmort 0
scoreboard players set Archibald po.legacy.detectmort 0
scoreboard players set Askepios po.legacy.detectmort 0
scoreboard players set Browis po.legacy.detectmort 0
# play -> play (trigger)
scoreboard objectives add play trigger
scoreboard players set Babiblaster play 0
scoreboard players set Archibald play 0
scoreboard players set Askepios play 0
scoreboard players set Browis play 0
# timeRaz -> po.cd.raz (dummy)
scoreboard objectives add po.cd.raz dummy
scoreboard players set Babiblaster po.cd.raz 0
scoreboard players set Archibald po.cd.raz 0
scoreboard players set Askepios po.cd.raz 0
scoreboard players set Browis po.cd.raz 0
# equipEnder -> po.cos.equipender (dummy)
scoreboard objectives add po.cos.equipender dummy
scoreboard players set Babiblaster po.cos.equipender 1
scoreboard players set Archibald po.cos.equipender 1
scoreboard players set Askepios po.cos.equipender 1
scoreboard players set Browis po.cos.equipender 1
# chasseurGG -> po.kit.chasseurgg (dummy)
scoreboard objectives add po.kit.chasseurgg dummy
scoreboard players set Babiblaster po.kit.chasseurgg 0
scoreboard players set Archibald po.kit.chasseurgg 0
scoreboard players set Askepios po.kit.chasseurgg 0
scoreboard players set Browis po.kit.chasseurgg 0
# levi -> po.use.levitation (minecraft.used:minecraft.glow_berries)
scoreboard objectives add po.use.levitation minecraft.used:minecraft.glow_berries
scoreboard players set Babiblaster po.use.levitation 0
scoreboard players set Archibald po.use.levitation 0
scoreboard players set Askepios po.use.levitation 0
scoreboard players set Browis po.use.levitation 0
# testfish -> po.misc.testfish (minecraft.used:minecraft.fishing_rod)
scoreboard objectives add po.misc.testfish minecraft.used:minecraft.fishing_rod
# victoires -> po.win.toires (dummy)
scoreboard objectives add po.win.total dummy
scoreboard players set Babiblaster po.win.total 12
scoreboard players set Archibald po.win.total 1
scoreboard players set Askepios po.win.total 0
scoreboard players set Browis po.win.total 0
# timeWater -> po.tech.water_timer (dummy)
scoreboard objectives add po.tech.water_timer dummy
scoreboard players set Babiblaster po.tech.water_timer 1
scoreboard players set Archibald po.tech.water_timer 1
scoreboard players set Askepios po.tech.water_timer 1
scoreboard players set Browis po.tech.water_timer 1
# batisseur -> po.kit.batisseur (dummy)
scoreboard objectives add po.kit.batisseur dummy
scoreboard players set Babiblaster po.kit.batisseur 0
scoreboard players set Archibald po.kit.batisseur 0
scoreboard players set Askepios po.kit.batisseur 0
scoreboard players set Browis po.kit.batisseur 0
# xalDetect -> po.legacy.xaldetect (dummy)
scoreboard objectives add po.legacy.xaldetect dummy
scoreboard players set Babiblaster po.legacy.xaldetect 0
scoreboard players set Archibald po.legacy.xaldetect 0
scoreboard players set Askepios po.legacy.xaldetect 0
scoreboard players set Browis po.legacy.xaldetect 0
# lienSang -> po.use.bloodlink (minecraft.used:minecraft.apple)
scoreboard objectives add po.use.bloodlink minecraft.used:minecraft.apple
scoreboard players set Babiblaster po.use.bloodlink 0
scoreboard players set Archibald po.use.bloodlink 0
# timeEffect -> po.timer.effect (dummy)
scoreboard objectives add po.timer.effect dummy
scoreboard players set timer po.timer.effect 0
scoreboard players set effet po.timer.effect 0
# map1 -> po.map.v1 (dummy)
scoreboard objectives add po.map.v1 dummy
scoreboard players set Babiblaster po.map.v1 0
scoreboard players set Askepios po.map.v1 0
scoreboard players set Browis po.map.v1 0
# coins -> po.coins (dummy)
scoreboard objectives add po.coins dummy
scoreboard players set . po.coins 99999
scoreboard players set Babiblaster po.coins 240
scoreboard players set Archibald po.coins 20
scoreboard players set Askepios po.coins 0
scoreboard players set Browis po.coins 0
scoreboard players set ------------- po.coins -1
# armeeNaga -> po.use.naga_army (minecraft.used:minecraft.tube_coral)
scoreboard objectives add po.use.naga_army minecraft.used:minecraft.tube_coral
scoreboard players set Babiblaster po.use.naga_army 0
scoreboard players set Archibald po.use.naga_army 0
scoreboard players set Askepios po.use.naga_army 0
scoreboard players set Browis po.use.naga_army 0
# bouclierRep -> po.use.shield_rep (minecraft.used:minecraft.tide_armor_trim_smithing_template)
scoreboard objectives add po.use.shield_rep minecraft.used:minecraft.tide_armor_trim_smithing_template
# timeTotem -> po.cd.totem (dummy)
scoreboard objectives add po.cd.totem dummy
scoreboard players set Babiblaster po.cd.totem 0
scoreboard players set Archibald po.cd.totem 0
scoreboard players set Askepios po.cd.totem 0
scoreboard players set Browis po.cd.totem 0
# fantome -> po.use.phantom (minecraft.used:minecraft.rotten_flesh)
scoreboard objectives add po.use.phantom minecraft.used:minecraft.rotten_flesh
scoreboard players set Babiblaster po.use.phantom 0
scoreboard players set Archibald po.use.phantom 0
scoreboard players set Askepios po.use.phantom 0
scoreboard players set Browis po.use.phantom 0
# deluge -> po.use.deluge (minecraft.used:minecraft.cyan_dye)
scoreboard objectives add po.use.deluge minecraft.used:minecraft.cyan_dye
scoreboard players set Babiblaster po.use.deluge 0
scoreboard players set Archibald po.use.deluge 0
# puissance -> po.use.power (minecraft.used:minecraft.beetroot)
scoreboard objectives add po.use.power minecraft.used:minecraft.beetroot
scoreboard players set Babiblaster po.use.power 0
scoreboard players set Archibald po.use.power 0
scoreboard players set Askepios po.use.power 0
scoreboard players set Browis po.use.power 0
# invul -> po.tech.invulnerable (dummy)
scoreboard objectives add po.tech.invulnerable dummy
scoreboard players set Babiblaster po.tech.invulnerable 0
scoreboard players set Archibald po.tech.invulnerable 0
scoreboard players set Askepios po.tech.invulnerable 0
scoreboard players set Browis po.tech.invulnerable 0
# contrat -> po.use.contract (minecraft.used:minecraft.enchanted_book)
scoreboard objectives add po.use.contract minecraft.used:minecraft.enchanted_book
scoreboard players set time po.use.contract 40
scoreboard players set Babiblaster po.use.contract 0
scoreboard players set Archibald po.use.contract 0
scoreboard players set Askepios po.use.contract 0
scoreboard players set Browis po.use.contract 0
# achatCGG -> po.shop.chasseur_gg (dummy)
scoreboard objectives add po.shop.chasseur_gg dummy
scoreboard players set Babiblaster po.shop.chasseur_gg 0
# modenderP2 -> po.model.enderpearl2 (dummy)
scoreboard objectives add po.model.enderpearl2 dummy
scoreboard players set Babiblaster po.model.enderpearl2 0
scoreboard players set Archibald po.model.enderpearl2 0
scoreboard players set Askepios po.model.enderpearl2 0
scoreboard players set Browis po.model.enderpearl2 0
# nbPlan5 -> po.ctf.flag5 (minecraft.picked_up:minecraft.skull_banner_pattern)
scoreboard objectives add po.ctf.flag5 minecraft.picked_up:minecraft.skull_banner_pattern
scoreboard players set Babiblaster po.ctf.flag5 0
scoreboard players set Archibald po.ctf.flag5 0
scoreboard players set Askepios po.ctf.flag5 0
scoreboard players set Browis po.ctf.flag5 0
# pelle0 -> po.model.pelle0 (dummy)
scoreboard objectives add po.model.pelle0 dummy
scoreboard players set Babiblaster po.model.pelle0 2
scoreboard players set Archibald po.model.pelle0 2
scoreboard players set Askepios po.model.pelle0 2
scoreboard players set Browis po.model.pelle0 2
# timeBlock -> po.timer.block (dummy)
scoreboard objectives add po.timer.block dummy
scoreboard players set timer po.timer.block 0
# food -> po.tech.food (food)
scoreboard objectives add po.tech.food food
scoreboard players set Babiblaster po.tech.food 20
scoreboard players set Archibald po.tech.food 20
scoreboard players set Askepios po.tech.food 19
scoreboard players set Browis po.tech.food 19
# timeCharge -> po.cd.charge (dummy)
scoreboard objectives add po.cd.charge dummy
scoreboard players set Babiblaster po.cd.charge 0
scoreboard players set Archibald po.cd.charge 0
scoreboard players set Askepios po.cd.charge 0
scoreboard players set Browis po.cd.charge 0
# achatBat -> po.shop.batisseur (dummy)
scoreboard objectives add po.shop.batisseur dummy
scoreboard players set Babiblaster po.shop.batisseur 0
# bouclier -> po.use.shield_cookie (minecraft.used:minecraft.cookie)
scoreboard objectives add po.use.shield_cookie minecraft.used:minecraft.cookie
scoreboard players set Babiblaster po.use.shield_cookie 0
scoreboard players set Archibald po.use.shield_cookie 0
scoreboard players set Askepios po.use.shield_cookie 0
scoreboard players set Browis po.use.shield_cookie 0
# partieJoue -> po.stat.games_played (dummy)
scoreboard objectives add po.stat.games_played dummy
scoreboard players set Babiblaster po.stat.games_played 12
scoreboard players set Archibald po.stat.games_played 2
# lifeF -> po.tech.life_f (dummy)
scoreboard objectives add po.tech.life_f dummy
# ailesDange -> po.use.wings (minecraft.used:minecraft.nether_star)
scoreboard objectives add po.use.wings minecraft.used:minecraft.nether_star
# cosmeticmenu -> po.ui.cosmetic_menu (dummy)
scoreboard objectives add po.ui.cosmetic_menu dummy
scoreboard players set Babiblaster po.ui.cosmetic_menu 0
scoreboard players set Archibald po.ui.cosmetic_menu 0
scoreboard players set Askepios po.ui.cosmetic_menu 0
scoreboard players set Browis po.ui.cosmetic_menu 0
# vicMage -> po.win.mage (dummy)
scoreboard objectives add po.win.mage dummy
scoreboard players set Babiblaster po.win.mage 0
scoreboard players set Archibald po.win.mage 0
scoreboard players set Askepios po.win.mage 0
scoreboard players set Browis po.win.mage 0
# RageS -> po.use.rage (minecraft.used:minecraft.fire_coral_fan)
scoreboard objectives add po.use.rage minecraft.used:minecraft.fire_coral_fan
scoreboard players set Babiblaster po.use.rage 0
scoreboard players set Archibald po.use.rage 0
scoreboard players set Askepios po.use.rage 0
scoreboard players set Browis po.use.rage 0
# Pos -> po.tech.pos (dummy)
scoreboard objectives add po.tech.pos dummy
scoreboard players set Babiblaster po.tech.pos 14
scoreboard players set Browis po.tech.pos 14
scoreboard players set Askepios po.tech.pos 11
scoreboard players set Archibald po.tech.pos 8
# vicChaman -> po.win.chaman (dummy)
scoreboard objectives add po.win.chaman dummy
scoreboard players set Babiblaster po.win.chaman 0
scoreboard players set Archibald po.win.chaman 0
scoreboard players set Askepios po.win.chaman 0
scoreboard players set Browis po.win.chaman 0
# clock -> po.use.clock (minecraft.used:minecraft.clock)
scoreboard objectives add po.use.clock minecraft.used:minecraft.clock
scoreboard players set Babiblaster po.use.clock 0
scoreboard players set Archibald po.use.clock 0
scoreboard players set Askepios po.use.clock 0
scoreboard players set Browis po.use.clock 0
# toxi -> po.use.toxic (minecraft.used:minecraft.lime_dye)
scoreboard objectives add po.use.toxic minecraft.used:minecraft.lime_dye
# kitSelect -> po.state.kit_selecting (dummy)
scoreboard objectives add po.state.kit_selecting dummy
scoreboard players set Babiblaster po.state.kit_selecting 0
scoreboard players set Archibald po.state.kit_selecting 0
scoreboard players set Askepios po.state.kit_selecting 0
scoreboard players set Browis po.state.kit_selecting 0
# modulo -> po.tech.modulo (dummy)
scoreboard objectives add po.tech.modulo dummy
# TimeM3 -> po.cd.m3 (dummy)
scoreboard objectives add po.cd.m3 dummy
scoreboard players set Babiblaster po.cd.m3 0
scoreboard players set Archibald po.cd.m3 0
scoreboard players set Askepios po.cd.m3 0
scoreboard players set Browis po.cd.m3 0
# creeper -> po.legacy.creeper (dummy)
scoreboard objectives add po.legacy.creeper dummy
scoreboard players set Babiblaster po.legacy.creeper 0
scoreboard players set Archibald po.legacy.creeper 0
scoreboard players set Askepios po.legacy.creeper 0
scoreboard players set Browis po.legacy.creeper 0
# OTV -> po.misc.otv (minecraft.custom:minecraft.open_shulker_box)
scoreboard objectives add po.misc.otv minecraft.custom:minecraft.open_shulker_box
# randkit -> po.legacy.randkit (dummy)
scoreboard objectives add po.legacy.randkit dummy
scoreboard players set Babiblaster po.legacy.randkit 0
scoreboard players set Archibald po.legacy.randkit 0
scoreboard players set Askepios po.legacy.randkit 0
scoreboard players set Browis po.legacy.randkit 0
# achatInge -> po.shop.ingenieur (dummy)
scoreboard objectives add po.shop.ingenieur dummy
scoreboard players set Babiblaster po.shop.ingenieur 0
scoreboard players set Archibald po.shop.ingenieur 0
scoreboard players set Askepios po.shop.ingenieur 0
scoreboard players set Browis po.shop.ingenieur 0
# vicChevalier -> po.win.chevalier (dummy)
scoreboard objectives add po.win.chevalier dummy
scoreboard players set Babiblaster po.win.chevalier 0
scoreboard players set Archibald po.win.chevalier 0
scoreboard players set Askepios po.win.chevalier 0
scoreboard players set Browis po.win.chevalier 0
# timeLien -> po.cd.lien (dummy)
scoreboard objectives add po.cd.lien dummy
scoreboard players set Babiblaster po.cd.lien 0
scoreboard players set Archibald po.cd.lien 0
scoreboard players set Askepios po.cd.lien 0
scoreboard players set Browis po.cd.lien 0
# modLasso0 -> po.model.lasso0 (dummy)
scoreboard objectives add po.model.lasso0 dummy
scoreboard players set Babiblaster po.model.lasso0 0
scoreboard players set Archibald po.model.lasso0 0
scoreboard players set Askepios po.model.lasso0 0
scoreboard players set Browis po.model.lasso0 0
# modLasso1 -> po.model.lasso1 (dummy)
scoreboard objectives add po.model.lasso1 dummy
scoreboard players set Babiblaster po.model.lasso1 0
scoreboard players set Archibald po.model.lasso1 0
scoreboard players set Askepios po.model.lasso1 0
scoreboard players set Browis po.model.lasso1 0
# flint -> po.use.flint (minecraft.used:minecraft.flint)
scoreboard objectives add po.use.flint minecraft.used:minecraft.flint
# brick+ -> po.misc.brick+ (minecraft.used:minecraft.brick)
scoreboard objectives add po.misc.brick+ minecraft.used:minecraft.brick
# advDudanger -> po.adv.dudanger (dummy)
scoreboard objectives add po.adv.dudanger dummy
scoreboard players set Babiblaster po.adv.dudanger 6
scoreboard players set Archibald po.adv.dudanger 0
scoreboard players set Askepios po.adv.dudanger 0
scoreboard players set Browis po.adv.dudanger 0
# MaitreM -> po.kit.maitrem (dummy)
scoreboard objectives add po.kit.maitrem dummy
scoreboard players set Babiblaster po.kit.maitrem 0
scoreboard players set Archibald po.kit.maitrem 0
scoreboard players set Askepios po.kit.maitrem 0
scoreboard players set Browis po.kit.maitrem 0
# TimeM4 -> po.cd.m4 (dummy)
scoreboard objectives add po.cd.m4 dummy
scoreboard players set Babiblaster po.cd.m4 0
scoreboard players set Archibald po.cd.m4 0
scoreboard players set Askepios po.cd.m4 0
scoreboard players set Browis po.cd.m4 0
# TimeM2 -> po.cd.m2 (dummy)
scoreboard objectives add po.cd.m2 dummy
scoreboard players set Babiblaster po.cd.m2 0
scoreboard players set Archibald po.cd.m2 0
scoreboard players set Askepios po.cd.m2 0
scoreboard players set Browis po.cd.m2 0
# arti -> po.use.crossbow_arti (minecraft.used:minecraft.crossbow)
scoreboard objectives add po.use.crossbow_arti minecraft.used:minecraft.crossbow
scoreboard players set Babiblaster po.use.crossbow_arti 0
scoreboard players set Archibald po.use.crossbow_arti 0
scoreboard players set Askepios po.use.crossbow_arti 0
scoreboard players set Browis po.use.crossbow_arti 0
# TimeM1 -> po.cd.m1 (dummy)
scoreboard objectives add po.cd.m1 dummy
scoreboard players set Babiblaster po.cd.m1 0
scoreboard players set Archibald po.cd.m1 0
scoreboard players set Askepios po.cd.m1 0
scoreboard players set Browis po.cd.m1 0
# TimeTourelle -> po.cd.tourelle (dummy)
scoreboard objectives add po.cd.tourelle dummy
scoreboard players set Babiblaster po.cd.tourelle 0
scoreboard players set Archibald po.cd.tourelle 0
scoreboard players set Askepios po.cd.tourelle 0
scoreboard players set Browis po.cd.tourelle 0
# vicMaitreM -> po.win.maitrem (dummy)
scoreboard objectives add po.win.maitrem dummy
scoreboard players set Babiblaster po.win.maitrem 0
scoreboard players set Archibald po.win.maitrem 0
scoreboard players set Askepios po.win.maitrem 0
scoreboard players set Browis po.win.maitrem 0
# setGame -> po.tech.game_set (dummy)
scoreboard objectives add po.tech.game_set dummy
scoreboard players set Babiblaster po.tech.game_set 8
scoreboard players set Archibald po.tech.game_set 8
scoreboard players set Askepios po.tech.game_set 8
scoreboard players set Browis po.tech.game_set 8
# huile -> po.use.huile (minecraft.dropped:minecraft.honeycomb)
scoreboard objectives add po.use.huile minecraft.dropped:minecraft.honeycomb
scoreboard players set Babiblaster po.use.huile 0
scoreboard players set Archibald po.use.huile 0
scoreboard players set Askepios po.use.huile 0
scoreboard players set Browis po.use.huile 0
# timeMirror -> po.cd.mirror (dummy)
scoreboard objectives add po.cd.mirror dummy
scoreboard players set Babiblaster po.cd.mirror 0
scoreboard players set Archibald po.cd.mirror 0
scoreboard players set Askepios po.cd.mirror 0
scoreboard players set Browis po.cd.mirror 0
# victoire -> po.win.detectwin (dummy)
scoreboard objectives add po.win.detectwin dummy
scoreboard players set Babiblaster po.win.detectwin 0
scoreboard players set Archibald po.win.detectwin 0
scoreboard players set timer po.win.detectwin 0
scoreboard players set Askepios po.win.detectwin 0
scoreboard players set nb po.win.detectwin 0
scoreboard players set Browis po.win.detectwin 0
# lienGOD -> po.use.liengod (dummy)
scoreboard objectives add po.use.liengod dummy
scoreboard players set Babiblaster po.use.liengod 0
scoreboard players set Archibald po.use.liengod 0
scoreboard players set Askepios po.use.liengod 0
scoreboard players set nblien po.use.liengod 0
scoreboard players set Browis po.use.liengod 0
# achatMur -> po.shop.murloc (dummy)
scoreboard objectives add po.shop.murloc dummy
scoreboard players set Babiblaster po.shop.murloc 0
# connection -> po.stat.play_time (minecraft.custom:minecraft.play_time)
scoreboard objectives add po.stat.play_time minecraft.custom:minecraft.play_time
scoreboard players set Babiblaster po.stat.play_time 12449
scoreboard players set Archibald po.stat.play_time 10833
scoreboard players set Browis po.stat.play_time 1438
scoreboard players set Askepios po.stat.play_time 1012
# storeGrav -> po.legacy.storegrav (dummy)
scoreboard objectives add po.legacy.storegrav dummy
scoreboard players set Babiblaster po.legacy.storegrav 0
scoreboard players set Archibald po.legacy.storegrav 0
scoreboard players set Askepios po.legacy.storegrav 0
scoreboard players set Browis po.legacy.storegrav 0
# timePuissance -> po.cd.puissance (dummy)
scoreboard objectives add po.cd.puissance dummy
scoreboard players set Babiblaster po.cd.puissance 0
scoreboard players set Archibald po.cd.puissance 0
scoreboard players set Askepios po.cd.puissance 0
scoreboard players set Browis po.cd.puissance 0
# gel -> po.use.freeze (minecraft.used:minecraft.prismarine_crystals)
scoreboard objectives add po.use.freeze minecraft.used:minecraft.prismarine_crystals
scoreboard players set Babiblaster po.use.freeze 0
scoreboard players set Archibald po.use.freeze 0
scoreboard players set Askepios po.use.freeze 0
scoreboard players set Browis po.use.freeze 0
# vicBatisseur -> po.win.batisseur (dummy)
scoreboard objectives add po.win.batisseur dummy
scoreboard players set Babiblaster po.win.batisseur 0
scoreboard players set Archibald po.win.batisseur 0
scoreboard players set Askepios po.win.batisseur 0
scoreboard players set Browis po.win.batisseur 0
# ingenieur -> po.kit.ingenieur (dummy)
scoreboard objectives add po.kit.ingenieur dummy
scoreboard players set Babiblaster po.kit.ingenieur 0
scoreboard players set Archibald po.kit.ingenieur 0
scoreboard players set Askepios po.kit.ingenieur 0
scoreboard players set Browis po.kit.ingenieur 0
# ranger -> po.kit.ranger (dummy)
scoreboard objectives add po.kit.ranger dummy
scoreboard players set Babiblaster po.kit.ranger 0
scoreboard players set Archibald po.kit.ranger 0
scoreboard players set Askepios po.kit.ranger 0
scoreboard players set Browis po.kit.ranger 0
# raltime -> po.use.slow_time (minecraft.used:minecraft.phantom_membrane)
scoreboard objectives add po.use.slow_time minecraft.used:minecraft.phantom_membrane
scoreboard players set Babiblaster po.use.slow_time 0
scoreboard players set Archibald po.use.slow_time 0
scoreboard players set Askepios po.use.slow_time 0
scoreboard players set Browis po.use.slow_time 0
# algue -> po.shop.druide (dummy)
scoreboard objectives add po.shop.druide dummy
scoreboard players set Babiblaster po.shop.druide 0
scoreboard players set Archibald po.shop.druide 0
scoreboard players set Askepios po.shop.druide 0
scoreboard players set Browis po.shop.druide 0
# sauvetage -> po.tech.save (dummy)
scoreboard objectives add po.tech.save dummy
scoreboard players set Babiblaster po.tech.save 0
scoreboard players set Archibald po.tech.save 0
scoreboard players set Askepios po.tech.save 0
scoreboard players set Browis po.tech.save 0
# nbPlan4 -> po.ctf.flag4 (minecraft.picked_up:minecraft.piglin_banner_pattern)
scoreboard objectives add po.ctf.flag4 minecraft.picked_up:minecraft.piglin_banner_pattern
scoreboard players set Babiblaster po.ctf.flag4 0
scoreboard players set Archibald po.ctf.flag4 0
scoreboard players set Askepios po.ctf.flag4 0
scoreboard players set Browis po.ctf.flag4 0
# vicCGG -> po.win.cgg (dummy)
scoreboard objectives add po.win.cgg dummy
scoreboard players set Babiblaster po.win.cgg 0
scoreboard players set Archibald po.win.cgg 0
scoreboard players set Askepios po.win.cgg 0
scoreboard players set Browis po.win.cgg 0
# modenderP3 -> po.model.enderpearl3 (dummy)
scoreboard objectives add po.model.enderpearl3 dummy
scoreboard players set Babiblaster po.model.enderpearl3 0
scoreboard players set Archibald po.model.enderpearl3 0
scoreboard players set Askepios po.model.enderpearl3 0
scoreboard players set Browis po.model.enderpearl3 0
# cosRanger -> po.cos.ranger (dummy)
scoreboard objectives add po.cos.ranger dummy
scoreboard players set Babiblaster po.cos.ranger 0
scoreboard players set Archibald po.cos.ranger 0
scoreboard players set Askepios po.cos.ranger 0
scoreboard players set Browis po.cos.ranger 0
# randGlas -> po.legacy.randglas (dummy)
scoreboard objectives add po.legacy.randglas dummy
# realiteGOD -> po.use.god_reality (minecraft.used:minecraft.silence_armor_trim_smithing_template)
scoreboard objectives add po.use.god_reality minecraft.used:minecraft.silence_armor_trim_smithing_template
# pieces -> po.stat.gold_picked (minecraft.picked_up:minecraft.iron_nugget)
scoreboard objectives add po.stat.gold_picked minecraft.picked_up:minecraft.iron_nugget
scoreboard players set timePlan po.stat.gold_picked 250
scoreboard players set Babiblaster po.stat.gold_picked 0
scoreboard players set Archibald po.stat.gold_picked 0
scoreboard players set timer po.stat.gold_picked 0
scoreboard players set Askepios po.stat.gold_picked 0
scoreboard players set max po.stat.gold_picked 0
scoreboard players set Browis po.stat.gold_picked 0
# underwater -> po.misc.underwater (minecraft.custom:minecraft.walk_on_water_one_cm)
scoreboard objectives add po.misc.underwater minecraft.custom:minecraft.walk_on_water_one_cm
# watersource -> po.legacy.watersource (dummy)
scoreboard objectives add po.legacy.watersource dummy
scoreboard players set naga po.legacy.watersource 2
scoreboard players set Babiblaster po.legacy.watersource 0
scoreboard players set Archibald po.legacy.watersource 0
scoreboard players set Askepios po.legacy.watersource 0
scoreboard players set nb po.legacy.watersource 0
scoreboard players set Browis po.legacy.watersource 0
# racine -> po.use.racine (minecraft.used:minecraft.sweet_berries)
scoreboard objectives add po.use.racine minecraft.used:minecraft.sweet_berries
scoreboard players set Babiblaster po.use.racine 0
scoreboard players set Archibald po.use.racine 0
scoreboard players set Askepios po.use.racine 0
scoreboard players set Browis po.use.racine 0
# guerrier -> po.kit.guerrier (dummy)
scoreboard objectives add po.kit.guerrier dummy
scoreboard players set Babiblaster po.kit.guerrier 0
scoreboard players set Archibald po.kit.guerrier 0
scoreboard players set Askepios po.kit.guerrier 0
scoreboard players set Browis po.kit.guerrier 0
# Vision -> po.use.vision (minecraft.used:minecraft.polar_bear_spawn_egg)
scoreboard objectives add po.use.vision minecraft.used:minecraft.polar_bear_spawn_egg
scoreboard players set Babiblaster po.use.vision 0
scoreboard players set Archibald po.use.vision 0
scoreboard players set Askepios po.use.vision 0
scoreboard players set Browis po.use.vision 0
# vicAssassin -> po.win.assassin (dummy)
scoreboard objectives add po.win.assassin dummy
scoreboard players set Babiblaster po.win.assassin 1
scoreboard players set Archibald po.win.assassin 0
scoreboard players set Askepios po.win.assassin 0
scoreboard players set Browis po.win.assassin 0
# vicIngenieur -> po.win.ingenieur (dummy)
scoreboard objectives add po.win.ingenieur dummy
scoreboard players set Babiblaster po.win.ingenieur 0
scoreboard players set Archibald po.win.ingenieur 0
scoreboard players set Askepios po.win.ingenieur 0
scoreboard players set Browis po.win.ingenieur 0
# raz -> po.use.raz (minecraft.used:minecraft.splash_potion)
scoreboard objectives add po.use.raz minecraft.used:minecraft.splash_potion
# pelle5 -> po.model.pelle5 (dummy)
scoreboard objectives add po.model.pelle5 dummy
scoreboard players set Babiblaster po.model.pelle5 0
scoreboard players set Archibald po.model.pelle5 0
scoreboard players set Askepios po.model.pelle5 0
scoreboard players set Browis po.model.pelle5 0
# nbPlan2 -> po.ctf.flag2 (minecraft.picked_up:minecraft.globe_banner_pattern)
scoreboard objectives add po.ctf.flag2 minecraft.picked_up:minecraft.globe_banner_pattern
scoreboard players set Babiblaster po.ctf.flag2 0
scoreboard players set Archibald po.ctf.flag2 0
scoreboard players set Askepios po.ctf.flag2 0
scoreboard players set Browis po.ctf.flag2 0
# timePeau -> po.cd.peau (dummy)
scoreboard objectives add po.cd.peau dummy
scoreboard players set Babiblaster po.cd.peau 0
scoreboard players set Archibald po.cd.peau 0
scoreboard players set Askepios po.cd.peau 0
scoreboard players set Browis po.cd.peau 0
# fer -> po.shovel.iron (dummy)
scoreboard objectives add po.shovel.iron dummy
scoreboard players set Babiblaster po.shovel.iron 0
scoreboard players set Archibald po.shovel.iron 0
scoreboard players set Askepios po.shovel.iron 0
scoreboard players set Browis po.shovel.iron 0
# modenderP1 -> po.model.enderpearl1 (dummy)
scoreboard objectives add po.model.enderpearl1 dummy
scoreboard players set Babiblaster po.model.enderpearl1 0
scoreboard players set Archibald po.model.enderpearl1 0
scoreboard players set Askepios po.model.enderpearl1 0
scoreboard players set Browis po.model.enderpearl1 0
# achatMM -> po.shop.maitre_m (dummy)
scoreboard objectives add po.shop.maitre_m dummy
scoreboard players set Babiblaster po.shop.maitre_m 0
# mage -> po.kit.mage (dummy)
scoreboard objectives add po.kit.mage dummy
scoreboard players set Babiblaster po.kit.mage 0
scoreboard players set Archibald po.kit.mage 0
scoreboard players set Askepios po.kit.mage 0
scoreboard players set Browis po.kit.mage 0
# timeCible -> po.cd.cible (dummy)
scoreboard objectives add po.cd.cible dummy
scoreboard players set epee po.cd.cible 76
scoreboard players set alea po.cd.cible 10
scoreboard players set Babiblaster po.cd.cible 0
scoreboard players set Archibald po.cd.cible 0
scoreboard players set lifetime po.cd.cible 0
scoreboard players set timer po.cd.cible 0
scoreboard players set Askepios po.cd.cible 0
scoreboard players set block po.cd.cible 0
scoreboard players set Browis po.cd.cible 0
# nbPlan6 -> po.ctf.flag6 (minecraft.picked_up:minecraft.mojang_banner_pattern)
scoreboard objectives add po.ctf.flag6 minecraft.picked_up:minecraft.mojang_banner_pattern
scoreboard players set Babiblaster po.ctf.flag6 0
scoreboard players set Archibald po.ctf.flag6 0
scoreboard players set Askepios po.ctf.flag6 0
scoreboard players set Browis po.ctf.flag6 0
# deco -> po.stat.leaves (minecraft.custom:minecraft.leave_game)
scoreboard objectives add po.stat.leaves minecraft.custom:minecraft.leave_game
scoreboard players set Babiblaster po.stat.leaves 1
scoreboard players set Archibald po.stat.leaves 1
scoreboard players set Askepios po.stat.leaves 1
scoreboard players set Browis po.stat.leaves 1
# enderpearlPartie -> po.use.pearl_game (minecraft.used:minecraft.ender_pearl)
scoreboard objectives add po.use.pearl_game minecraft.used:minecraft.ender_pearl
scoreboard players set Babiblaster po.use.pearl_game 0
scoreboard players set Archibald po.use.pearl_game 0
scoreboard players set Askepios po.use.pearl_game 0
scoreboard players set Browis po.use.pearl_game 0
# cheval -> po.shop.chevalier (dummy)
scoreboard objectives add po.shop.chevalier dummy
scoreboard players set Babiblaster po.shop.chevalier 0
scoreboard players set Archibald po.shop.chevalier 0
scoreboard players set Askepios po.shop.chevalier 0
scoreboard players set Browis po.shop.chevalier 0
# fantomeK -> po.kit.fantome (dummy)
scoreboard objectives add po.kit.fantome dummy
scoreboard players set Babiblaster po.kit.fantome 0
scoreboard players set Archibald po.kit.fantome 0
scoreboard players set Askepios po.kit.fantome 0
scoreboard players set Browis po.kit.fantome 0
# vicRanger -> po.win.ranger (dummy)
scoreboard objectives add po.win.ranger dummy
scoreboard players set Babiblaster po.win.ranger 9
scoreboard players set Archibald po.win.ranger 1
scoreboard players set Askepios po.win.ranger 0
scoreboard players set Browis po.win.ranger 0
# titre -> po.timer.titre (dummy)
scoreboard objectives add po.timer.titre dummy
scoreboard players set Babiblaster po.timer.titre 0
scoreboard players set Archibald po.timer.titre 0
scoreboard players set Askepios po.timer.titre 0
scoreboard players set Browis po.timer.titre 0
# grav -> po.misc.grav (minecraft.used:minecraft.echo_shard)
scoreboard objectives add po.misc.grav minecraft.used:minecraft.echo_shard
scoreboard players set Babiblaster po.misc.grav 0
scoreboard players set Archibald po.misc.grav 0
scoreboard players set Askepios po.misc.grav 0
scoreboard players set Browis po.misc.grav 0
# lancer -> po.use.ender_pearl (minecraft.used:minecraft.ender_pearl)
scoreboard objectives add po.use.ender_pearl minecraft.used:minecraft.ender_pearl
scoreboard players set Babiblaster po.use.ender_pearl 0
scoreboard players set Archibald po.use.ender_pearl 0
scoreboard players set Askepios po.use.ender_pearl 0
scoreboard players set Browis po.use.ender_pearl 0
# timeObjA -> po.cd.obj_angelique (dummy)
scoreboard objectives add po.cd.obj_angelique dummy
scoreboard players set timer po.cd.obj_angelique 0
scoreboard players set hotel po.cd.obj_angelique 0
# diamant -> po.shovel.diamond (dummy)
scoreboard objectives add po.shovel.diamond dummy
scoreboard players set Babiblaster po.shovel.diamond 0
scoreboard players set Archibald po.shovel.diamond 0
scoreboard players set Askepios po.shovel.diamond 0
scoreboard players set Browis po.shovel.diamond 0
# pelle3 -> po.model.pelle3 (dummy)
scoreboard objectives add po.model.pelle3 dummy
scoreboard players set Babiblaster po.model.pelle3 0
scoreboard players set Archibald po.model.pelle3 0
scoreboard players set Askepios po.model.pelle3 0
scoreboard players set Browis po.model.pelle3 0
# comptarba -> po.cd.arbalete (dummy)
scoreboard objectives add po.cd.arbalete dummy
scoreboard players set Babiblaster po.cd.arbalete 0
scoreboard players set Archibald po.cd.arbalete 0
scoreboard players set Askepios po.cd.arbalete 0
scoreboard players set Browis po.cd.arbalete 0
# sonLasso0 -> po.sound.lasso0 (dummy)
scoreboard objectives add po.sound.lasso0 dummy
scoreboard players set Babiblaster po.sound.lasso0 0
# sonLasso1 -> po.sound.lasso1 (dummy)
scoreboard objectives add po.sound.lasso1 dummy
scoreboard players set Babiblaster po.sound.lasso1 0
# map4b -> po.map.res4 (dummy)
scoreboard objectives add po.map.res4 dummy
scoreboard players set Babiblaster po.map.res4 0
scoreboard players set Archibald po.map.res4 0
scoreboard players set total po.map.res4 0
scoreboard players set Askepios po.map.res4 0
scoreboard players set Browis po.map.res4 0
# map -> po.map.vote_id (dummy)
scoreboard objectives add po.map.vote_id dummy
scoreboard players set select po.map.vote_id 2
# map4 -> po.map.v4 (dummy)
scoreboard objectives add po.map.v4 dummy
scoreboard players set Babiblaster po.map.v4 0
scoreboard players set Askepios po.map.v4 0
scoreboard players set Browis po.map.v4 0
# skull -> po.shop.necromancien (dummy)
scoreboard objectives add po.shop.necromancien dummy
scoreboard players set Babiblaster po.shop.necromancien 0
scoreboard players set Archibald po.shop.necromancien 0
scoreboard players set Askepios po.shop.necromancien 0
scoreboard players set Browis po.shop.necromancien 0
# vieVision -> po.tech.life_vision (dummy)
scoreboard objectives add po.tech.life_vision dummy
# resu -> po.misc.resu (minecraft.used:minecraft.allay_spawn_egg)
scoreboard objectives add po.misc.resu minecraft.used:minecraft.allay_spawn_egg
# or -> po.shovel.gold (dummy)
scoreboard objectives add po.shovel.gold dummy
scoreboard players set Babiblaster po.shovel.gold 0
scoreboard players set Archibald po.shovel.gold 0
scoreboard players set Askepios po.shovel.gold 0
scoreboard players set Browis po.shovel.gold 0
# PoseTourelle -> po.use.turret_place (minecraft.used:minecraft.enderman_spawn_egg)
scoreboard objectives add po.use.turret_place minecraft.used:minecraft.enderman_spawn_egg
scoreboard players set Babiblaster po.use.turret_place 0
scoreboard players set Archibald po.use.turret_place 0
scoreboard players set Askepios po.use.turret_place 0
scoreboard players set Browis po.use.turret_place 0
# enderVoid -> po.tech.void_pearl (dummy)
scoreboard objectives add po.tech.void_pearl dummy
scoreboard players set Babiblaster po.tech.void_pearl 0
scoreboard players set Archibald po.tech.void_pearl 0
scoreboard players set Askepios po.tech.void_pearl 0
scoreboard players set Browis po.tech.void_pearl 0
# map3 -> po.map.v3 (dummy)
scoreboard objectives add po.map.v3 dummy
scoreboard players set Babiblaster po.map.v3 0
scoreboard players set Askepios po.map.v3 0
scoreboard players set Browis po.map.v3 0
# assassinK -> po.kit.assassin (dummy)
scoreboard objectives add po.kit.assassin dummy
scoreboard players set Babiblaster po.kit.assassin 0
scoreboard players set Archibald po.kit.assassin 0
scoreboard players set Askepios po.kit.assassin 0
scoreboard players set Browis po.kit.assassin 0
# timeCont -> po.cd.cont (dummy)
scoreboard objectives add po.cd.cont dummy
scoreboard players set Babiblaster po.cd.cont 0
scoreboard players set Archibald po.cd.cont 0
scoreboard players set Askepios po.cd.cont 0
scoreboard players set Browis po.cd.cont 0
# vicMurloc -> po.win.murloc (dummy)
scoreboard objectives add po.win.murloc dummy
scoreboard players set Babiblaster po.win.murloc 0
scoreboard players set Archibald po.win.murloc 0
scoreboard players set Askepios po.win.murloc 0
scoreboard players set Browis po.win.murloc 0
# vicNecro -> po.win.necro (dummy)
scoreboard objectives add po.win.necro dummy
scoreboard players set Babiblaster po.win.necro 0
scoreboard players set Archibald po.win.necro 0
scoreboard players set Askepios po.win.necro 0
scoreboard players set Browis po.win.necro 0
# equipEnderSon -> po.cos.sound.equipender (dummy)
scoreboard objectives add po.cos.sound.equipender dummy
scoreboard players set Babiblaster po.cos.sound.equipender 0
scoreboard players set Archibald po.cos.sound.equipender 0
scoreboard players set Askepios po.cos.sound.equipender 0
scoreboard players set Browis po.cos.sound.equipender 0
# invocation -> po.misc.invocation (minecraft.used:minecraft.bone)
scoreboard objectives add po.misc.invocation minecraft.used:minecraft.bone
scoreboard players set Babiblaster po.misc.invocation 0
scoreboard players set Archibald po.misc.invocation 0
scoreboard players set Askepios po.misc.invocation 0
scoreboard players set Browis po.misc.invocation 0
# grapRanger -> po.legacy.grapranger (dummy)
scoreboard objectives add po.legacy.grapranger dummy
# changeKit -> po.state.kit_changing (dummy)
scoreboard objectives add po.state.kit_changing dummy
scoreboard players set alea po.state.kit_changing 11
scoreboard players set Babiblaster po.state.kit_changing 0
scoreboard players set Archibald po.state.kit_changing 0
scoreboard players set Askepios po.state.kit_changing 0
scoreboard players set Browis po.state.kit_changing 0
# cosFlecheRetour -> po.cos.previous_menu (dummy)
scoreboard objectives add po.cos.previous_menu dummy
scoreboard players set Babiblaster po.cos.previous_menu 0
# encre -> po.shop.chaman (dummy)
scoreboard objectives add po.shop.chaman dummy
scoreboard players set Babiblaster po.shop.chaman 0
scoreboard players set Archibald po.shop.chaman 0
scoreboard players set Askepios po.shop.chaman 0
scoreboard players set Browis po.shop.chaman 0
# chaman -> po.kit.chaman (dummy)
scoreboard objectives add po.kit.chaman dummy
scoreboard players set Babiblaster po.kit.chaman 0
scoreboard players set Archibald po.kit.chaman 0
scoreboard players set Askepios po.kit.chaman 0
scoreboard players set Browis po.kit.chaman 0
# inversDestin -> po.use.fate_inverse (minecraft.used:minecraft.flow_armor_trim_smithing_template)
scoreboard objectives add po.use.fate_inverse minecraft.used:minecraft.flow_armor_trim_smithing_template
scoreboard players set Babiblaster po.use.fate_inverse 0
scoreboard players set Archibald po.use.fate_inverse 0
scoreboard players set Askepios po.use.fate_inverse 0
scoreboard players set Browis po.use.fate_inverse 0
# equipLasso -> po.cos.equiplasso (dummy)
scoreboard objectives add po.cos.equiplasso dummy
scoreboard players set Babiblaster po.cos.equiplasso 1
scoreboard players set Archibald po.cos.equiplasso 1
scoreboard players set Askepios po.cos.equiplasso 1
scoreboard players set Browis po.cos.equiplasso 1
# enderpearlGlobal -> po.use.pearl_global (minecraft.used:minecraft.ender_pearl)
scoreboard objectives add po.use.pearl_global minecraft.used:minecraft.ender_pearl
scoreboard players set Babiblaster po.use.pearl_global 8
scoreboard players set Archibald po.use.pearl_global 0
scoreboard players set Askepios po.use.pearl_global 0
scoreboard players set Browis po.use.pearl_global 0
# horn -> po.use.horn (minecraft.used:minecraft.goat_horn)
scoreboard objectives add po.use.horn minecraft.used:minecraft.goat_horn
# timeTox -> po.cd.toxic (dummy)
scoreboard objectives add po.cd.toxic dummy
scoreboard players set Babiblaster po.cd.toxic 0
scoreboard players set Archibald po.cd.toxic 0
scoreboard players set Askepios po.cd.toxic 0
scoreboard players set Browis po.cd.toxic 0
# lancerInstant -> po.misc.lancerinstant (minecraft.used:minecraft.ender_pearl)
scoreboard objectives add po.misc.lancerinstant minecraft.used:minecraft.ender_pearl
scoreboard players set Babiblaster po.misc.lancerinstant 0
# map1b -> po.map.res1 (dummy)
scoreboard objectives add po.map.res1 dummy
scoreboard players set Babiblaster po.map.res1 0
scoreboard players set Archibald po.map.res1 0
scoreboard players set total po.map.res1 0
scoreboard players set Askepios po.map.res1 0
scoreboard players set Browis po.map.res1 0
# cosRangerG -> po.cos.rangerg (dummy)
scoreboard objectives add po.cos.rangerg dummy
scoreboard players set Babiblaster po.cos.rangerg 1
scoreboard players set Archibald po.cos.rangerg 1
scoreboard players set Askepios po.cos.rangerg 1
scoreboard players set Browis po.cos.rangerg 1
# peau -> po.use.peau (minecraft.used:minecraft.netherite_scrap)
scoreboard objectives add po.use.peau minecraft.used:minecraft.netherite_scrap
# air -> po.use.air (minecraft.used:minecraft.feather)
scoreboard objectives add po.use.air minecraft.used:minecraft.feather
scoreboard players set Babiblaster po.use.air 0
scoreboard players set Archibald po.use.air 0
scoreboard players set Askepios po.use.air 0
scoreboard players set Browis po.use.air 0
# timeVision -> po.cd.vision (dummy)
scoreboard objectives add po.cd.vision dummy
scoreboard players set Babiblaster po.cd.vision 0
scoreboard players set Archibald po.cd.vision 0
scoreboard players set Askepios po.cd.vision 0
scoreboard players set Browis po.cd.vision 0
# plan -> po.timer.plan (dummy)
scoreboard objectives add po.timer.plan dummy
scoreboard players set item po.timer.plan 3
scoreboard players set Babiblaster po.timer.plan 0
scoreboard players set Archibald po.timer.plan 0
scoreboard players set Askepios po.timer.plan 0
scoreboard players set Browis po.timer.plan 0
scoreboard players set select po.timer.plan 0
# piegehuile -> po.legacy.piegehuile (dummy)
scoreboard objectives add po.legacy.piegehuile dummy
scoreboard players set Babiblaster po.legacy.piegehuile 0
scoreboard players set Archibald po.legacy.piegehuile 0
scoreboard players set Askepios po.legacy.piegehuile 0
scoreboard players set Browis po.legacy.piegehuile 0
# Repulseur -> po.use.repulsor (minecraft.used:minecraft.shulker_spawn_egg)
scoreboard objectives add po.use.repulsor minecraft.used:minecraft.shulker_spawn_egg
scoreboard players set Babiblaster po.use.repulsor 0
scoreboard players set Archibald po.use.repulsor 0
scoreboard players set Askepios po.use.repulsor 0
scoreboard players set Browis po.use.repulsor 0
# lifeBullet -> po.tech.life_bullet (dummy)
scoreboard objectives add po.tech.life_bullet dummy
# necromancien -> po.kit.necromancien (dummy)
scoreboard objectives add po.kit.necromancien dummy
scoreboard players set Babiblaster po.kit.necromancien 0
scoreboard players set Archibald po.kit.necromancien 0
scoreboard players set Askepios po.kit.necromancien 0
scoreboard players set Browis po.kit.necromancien 0
# vicFantome -> po.win.fantome (dummy)
scoreboard objectives add po.win.fantome dummy
scoreboard players set Babiblaster po.win.fantome 0
scoreboard players set Archibald po.win.fantome 0
scoreboard players set Askepios po.win.fantome 0
scoreboard players set Browis po.win.fantome 0
# totem -> po.use.totem (minecraft.used:minecraft.armor_stand)
scoreboard objectives add po.use.totem minecraft.used:minecraft.armor_stand
scoreboard players set Babiblaster po.use.totem 0
scoreboard players set Archibald po.use.totem 0
scoreboard players set Askepios po.use.totem 0
scoreboard players set Browis po.use.totem 0
# vicGuerrier -> po.win.guerrier (dummy)
scoreboard objectives add po.win.guerrier dummy
scoreboard players set Babiblaster po.win.guerrier 0
scoreboard players set Archibald po.win.guerrier 0
scoreboard players set Askepios po.win.guerrier 0
scoreboard players set Browis po.win.guerrier 0
# aggroNaga -> po.legacy.aggronaga (dummy)
scoreboard objectives add po.legacy.aggronaga dummy
scoreboard players set Babiblaster po.legacy.aggronaga 0
scoreboard players set Archibald po.legacy.aggronaga 0
scoreboard players set Askepios po.legacy.aggronaga 0
scoreboard players set Browis po.legacy.aggronaga 0
# modenderP0 -> po.model.enderpearl0 (dummy)
scoreboard objectives add po.model.enderpearl0 dummy
scoreboard players set Babiblaster po.model.enderpearl0 0
scoreboard players set Archibald po.model.enderpearl0 0
scoreboard players set Askepios po.model.enderpearl0 0
scoreboard players set Browis po.model.enderpearl0 0
# TourelleP -> po.use.turret_p (minecraft.used:minecraft.enderman_spawn_egg)
scoreboard objectives add po.use.turret_p minecraft.used:minecraft.enderman_spawn_egg
scoreboard players set Babiblaster po.use.turret_p 0
scoreboard players set Archibald po.use.turret_p 0
scoreboard players set Askepios po.use.turret_p 0
scoreboard players set Browis po.use.turret_p 0
# modenderP4 -> po.model.enderpearl4 (dummy)
scoreboard objectives add po.model.enderpearl4 dummy
scoreboard players set Babiblaster po.model.enderpearl4 0
scoreboard players set Archibald po.model.enderpearl4 0
scoreboard players set Askepios po.model.enderpearl4 0
scoreboard players set Browis po.model.enderpearl4 0
# tp -> po.use.spyglass_tp (minecraft.used:minecraft.spyglass)
scoreboard objectives add po.use.spyglass_tp minecraft.used:minecraft.spyglass
scoreboard players set Babiblaster po.use.spyglass_tp 0
scoreboard players set Archibald po.use.spyglass_tp 0
scoreboard players set Askepios po.use.spyglass_tp 0
scoreboard players set Browis po.use.spyglass_tp 0
# eventType -> po.legacy.eventtype (dummy)
scoreboard objectives add po.legacy.eventtype dummy
scoreboard players set alea po.legacy.eventtype 1
scoreboard players set eventPartie po.legacy.eventtype 0
# QTB -> po.legacy.qtb (dummy)
scoreboard objectives add po.legacy.qtb dummy
scoreboard players set Askepios po.legacy.qtb 28
scoreboard players set Browis po.legacy.qtb 28
scoreboard players set Babiblaster po.legacy.qtb 16
scoreboard players set Archibald po.legacy.qtb 16
# timePerturb -> po.cd.perturb (dummy)
scoreboard objectives add po.cd.perturb dummy
scoreboard players set Babiblaster po.cd.perturb 0
scoreboard players set Archibald po.cd.perturb 0
scoreboard players set timer po.cd.perturb 0
# pelle2 -> po.model.pelle2 (dummy)
scoreboard objectives add po.model.pelle2 dummy
scoreboard players set Babiblaster po.model.pelle2 0
scoreboard players set Archibald po.model.pelle2 0
scoreboard players set Askepios po.model.pelle2 0
scoreboard players set Browis po.model.pelle2 0
# Timefant -> po.cd.fantome (dummy)
scoreboard objectives add po.cd.fantome dummy
# nbPlan3 -> po.ctf.flag3 (minecraft.picked_up:minecraft.flower_banner_pattern)
scoreboard objectives add po.ctf.flag3 minecraft.picked_up:minecraft.flower_banner_pattern
scoreboard players set Babiblaster po.ctf.flag3 0
scoreboard players set Archibald po.ctf.flag3 0
scoreboard players set Askepios po.ctf.flag3 0
scoreboard players set Browis po.ctf.flag3 0
# poseBlock -> po.legacy.poseblock (dummy)
scoreboard objectives add po.legacy.poseblock dummy
# mine -> po.use.mine (minecraft.used:minecraft.skeleton_spawn_egg)
scoreboard objectives add po.use.mine minecraft.used:minecraft.skeleton_spawn_egg
scoreboard players set Babiblaster po.use.mine 0
scoreboard players set Archibald po.use.mine 0
scoreboard players set Askepios po.use.mine 0
scoreboard players set Browis po.use.mine 0
# forestier -> po.kit.forestier (dummy)
scoreboard objectives add po.kit.forestier dummy
scoreboard players set Babiblaster po.kit.forestier 0
scoreboard players set Archibald po.kit.forestier 0
scoreboard players set Askepios po.kit.forestier 0
scoreboard players set Browis po.kit.forestier 0
# flotHuile -> po.legacy.flothuile (dummy)
scoreboard objectives add po.legacy.flothuile dummy
# timeClock -> po.cd.clock (dummy)
scoreboard objectives add po.cd.clock dummy
scoreboard players set Babiblaster po.cd.clock 0
scoreboard players set Archibald po.cd.clock 0
scoreboard players set Askepios po.cd.clock 0
scoreboard players set Browis po.cd.clock 0
# protect -> po.use.protect (minecraft.used:minecraft.dried_kelp)
scoreboard objectives add po.use.protect minecraft.used:minecraft.dried_kelp
scoreboard players set Babiblaster po.use.protect 0
scoreboard players set Archibald po.use.protect 0
scoreboard players set Askepios po.use.protect 0
scoreboard players set Browis po.use.protect 0
# multibow -> po.use.bow_multi (minecraft.used:minecraft.archer_pottery_sherd)
scoreboard objectives add po.use.bow_multi minecraft.used:minecraft.archer_pottery_sherd
scoreboard players set Babiblaster po.use.bow_multi 0
scoreboard players set Archibald po.use.bow_multi 0
scoreboard players set Askepios po.use.bow_multi 0
scoreboard players set Browis po.use.bow_multi 0
# secWater -> po.stat.water_time (dummy)
scoreboard objectives add po.stat.water_time dummy
# vicForestier -> po.win.forestier (dummy)
scoreboard objectives add po.win.forestier dummy
scoreboard players set Babiblaster po.win.forestier 2
scoreboard players set Archibald po.win.forestier 0
scoreboard players set Askepios po.win.forestier 0
scoreboard players set Browis po.win.forestier 0
# bois -> po.shovel.wood (dummy)
scoreboard objectives add po.shovel.wood dummy
scoreboard players set Babiblaster po.shovel.wood 0
scoreboard players set Archibald po.shovel.wood 0
scoreboard players set Askepios po.shovel.wood 0
scoreboard players set Browis po.shovel.wood 0

# =================================================================
# NETTOYAGE TOTAL
# =================================================================
scoreboard objectives remove advBarroud
scoreboard objectives remove sneak
scoreboard objectives remove aimant
scoreboard objectives remove cthunEye
scoreboard objectives remove slime
scoreboard objectives remove timer
scoreboard objectives remove timeRac
scoreboard objectives remove achatAss
scoreboard objectives remove cible
scoreboard objectives remove intangibilite
scoreboard objectives remove mirroir
scoreboard objectives remove timeProtect
scoreboard objectives remove mort
scoreboard objectives remove trident
scoreboard objectives remove sonEnder0
scoreboard objectives remove menu
scoreboard objectives remove randomXal
scoreboard objectives remove lifeTourelle
scoreboard objectives remove vie
scoreboard objectives remove PlayerTimer
scoreboard objectives remove nbconnection
scoreboard objectives remove sonEnder1
scoreboard objectives remove medaillon
scoreboard objectives remove menumap
scoreboard objectives remove timeIntan
scoreboard objectives remove vicDruide
scoreboard objectives remove cosForestier
scoreboard objectives remove cristalVie
scoreboard objectives remove charge
scoreboard objectives remove kit
scoreboard objectives remove familier
scoreboard objectives remove fishing
scoreboard objectives remove balise
scoreboard objectives remove couche
scoreboard objectives remove controle
scoreboard objectives remove nether
scoreboard objectives remove pelle1
scoreboard objectives remove map2b
scoreboard objectives remove druide
scoreboard objectives remove assassinat
scoreboard objectives remove position
scoreboard objectives remove mareenoire
scoreboard objectives remove rocket
scoreboard objectives remove map2
scoreboard objectives remove constru
scoreboard objectives remove fant
scoreboard objectives remove equipLassoSon
scoreboard objectives remove fumi
scoreboard objectives remove chevalier
scoreboard objectives remove murloc
scoreboard objectives remove glasDivin
scoreboard objectives remove pelle4
scoreboard objectives remove nbPlan1
scoreboard objectives remove map3b
scoreboard objectives remove pierre
scoreboard objectives remove Cfleche
scoreboard objectives remove crossbow
scoreboard objectives remove DetectMort
scoreboard objectives remove timeRaz
scoreboard objectives remove equipEnder
scoreboard objectives remove chasseurGG
scoreboard objectives remove levi
scoreboard objectives remove testfish
scoreboard objectives remove victoires
scoreboard objectives remove timeWater
scoreboard objectives remove batisseur
scoreboard objectives remove xalDetect
scoreboard objectives remove lienSang
scoreboard objectives remove timeEffect
scoreboard objectives remove map1
scoreboard objectives remove coins
scoreboard objectives remove armeeNaga
scoreboard objectives remove bouclierRep
scoreboard objectives remove timeTotem
scoreboard objectives remove fantome
scoreboard objectives remove deluge
scoreboard objectives remove puissance
scoreboard objectives remove invul
scoreboard objectives remove contrat
scoreboard objectives remove achatCGG
scoreboard objectives remove modenderP2
scoreboard objectives remove nbPlan5
scoreboard objectives remove pelle0
scoreboard objectives remove timeBlock
scoreboard objectives remove food
scoreboard objectives remove timeCharge
scoreboard objectives remove achatBat
scoreboard objectives remove bouclier
scoreboard objectives remove partieJoue
scoreboard objectives remove lifeF
scoreboard objectives remove ailesDange
scoreboard objectives remove cosmeticmenu
scoreboard objectives remove vicMage
scoreboard objectives remove RageS
scoreboard objectives remove Pos
scoreboard objectives remove vicChaman
scoreboard objectives remove clock
scoreboard objectives remove toxi
scoreboard objectives remove kitSelect
scoreboard objectives remove modulo
scoreboard objectives remove TimeM3
scoreboard objectives remove creeper
scoreboard objectives remove OTV
scoreboard objectives remove randkit
scoreboard objectives remove achatInge
scoreboard objectives remove vicChevalier
scoreboard objectives remove timeLien
scoreboard objectives remove modLasso0
scoreboard objectives remove modLasso1
scoreboard objectives remove flint
scoreboard objectives remove brick+
scoreboard objectives remove advDudanger
scoreboard objectives remove MaitreM
scoreboard objectives remove TimeM4
scoreboard objectives remove TimeM2
scoreboard objectives remove arti
scoreboard objectives remove TimeM1
scoreboard objectives remove TimeTourelle
scoreboard objectives remove vicMaitreM
scoreboard objectives remove setGame
scoreboard objectives remove huile
scoreboard objectives remove timeMirror
scoreboard objectives remove victoire
scoreboard objectives remove lienGOD
scoreboard objectives remove achatMur
scoreboard objectives remove connection
scoreboard objectives remove storeGrav
scoreboard objectives remove timePuissance
scoreboard objectives remove gel
scoreboard objectives remove vicBatisseur
scoreboard objectives remove ingenieur
scoreboard objectives remove ranger
scoreboard objectives remove raltime
scoreboard objectives remove algue
scoreboard objectives remove sauvetage
scoreboard objectives remove nbPlan4
scoreboard objectives remove vicCGG
scoreboard objectives remove modenderP3
scoreboard objectives remove cosRanger
scoreboard objectives remove randGlas
scoreboard objectives remove realiteGOD
scoreboard objectives remove pieces
scoreboard objectives remove underwater
scoreboard objectives remove watersource
scoreboard objectives remove racine
scoreboard objectives remove guerrier
scoreboard objectives remove Vision
scoreboard objectives remove vicAssassin
scoreboard objectives remove vicIngenieur
scoreboard objectives remove raz
scoreboard objectives remove pelle5
scoreboard objectives remove nbPlan2
scoreboard objectives remove timePeau
scoreboard objectives remove fer
scoreboard objectives remove modenderP1
scoreboard objectives remove achatMM
scoreboard objectives remove mage
scoreboard objectives remove timeCible
scoreboard objectives remove nbPlan6
scoreboard objectives remove deco
scoreboard objectives remove enderpearlPartie
scoreboard objectives remove cheval
scoreboard objectives remove fantomeK
scoreboard objectives remove vicRanger
scoreboard objectives remove titre
scoreboard objectives remove grav
scoreboard objectives remove lancer
scoreboard objectives remove timeObjA
scoreboard objectives remove diamant
scoreboard objectives remove pelle3
scoreboard objectives remove comptarba
scoreboard objectives remove sonLasso0
scoreboard objectives remove sonLasso1
scoreboard objectives remove map4b
scoreboard objectives remove map
scoreboard objectives remove map4
scoreboard objectives remove skull
scoreboard objectives remove vieVision
scoreboard objectives remove resu
scoreboard objectives remove or
scoreboard objectives remove PoseTourelle
scoreboard objectives remove enderVoid
scoreboard objectives remove map3
scoreboard objectives remove assassinK
scoreboard objectives remove timeCont
scoreboard objectives remove vicMurloc
scoreboard objectives remove vicNecro
scoreboard objectives remove equipEnderSon
scoreboard objectives remove invocation
scoreboard objectives remove grapRanger
scoreboard objectives remove changeKit
scoreboard objectives remove cosFlecheRetour
scoreboard objectives remove encre
scoreboard objectives remove chaman
scoreboard objectives remove inversDestin
scoreboard objectives remove equipLasso
scoreboard objectives remove enderpearlGlobal
scoreboard objectives remove horn
scoreboard objectives remove timeTox
scoreboard objectives remove lancerInstant
scoreboard objectives remove map1b
scoreboard objectives remove cosRangerG
scoreboard objectives remove peau
scoreboard objectives remove air
scoreboard objectives remove timeVision
scoreboard objectives remove plan
scoreboard objectives remove piegehuile
scoreboard objectives remove Repulseur
scoreboard objectives remove lifeBullet
scoreboard objectives remove necromancien
scoreboard objectives remove vicFantome
scoreboard objectives remove totem
scoreboard objectives remove vicGuerrier
scoreboard objectives remove aggroNaga
scoreboard objectives remove modenderP0
scoreboard objectives remove TourelleP
scoreboard objectives remove modenderP4
scoreboard objectives remove tp
scoreboard objectives remove eventType
scoreboard objectives remove QTB
scoreboard objectives remove timePerturb
scoreboard objectives remove pelle2
scoreboard objectives remove Timefant
scoreboard objectives remove nbPlan3
scoreboard objectives remove poseBlock
scoreboard objectives remove mine
scoreboard objectives remove forestier
scoreboard objectives remove flotHuile
scoreboard objectives remove timeClock
scoreboard objectives remove protect
scoreboard objectives remove multibow
scoreboard objectives remove secWater
scoreboard objectives remove vicForestier
scoreboard objectives remove bois
tellraw @a[tag=admin] ["",{"text":"[Pitchout] ","color":"gold"},{"text":"Migration 100% Terminée.","color":"green"}]
playsound minecraft:ui.toast.challenge_complete master @a[tag=admin]