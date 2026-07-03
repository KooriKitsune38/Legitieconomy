scoreboard objectives add k.Values dummy
scoreboard objectives add Legiticoins dummy

scoreboard objectives add le.afk dummy

scoreboard objectives add beg trigger
scoreboard objectives add le.beggingTimer dummy
scoreboard objectives add le.beggarUUID dummy

scoreboard objectives add le.gadgetValues dummy
scoreboard objectives add le.Entity dummy

scoreboard objectives add k.UUIDs dummy
scoreboard objectives add le.petCode dummy
scoreboard objectives add le.leave custom:leave_game

scoreboard objectives add price trigger
scoreboard objectives add stock trigger
scoreboard objectives add confirm trigger
scoreboard objectives add amount trigger

scoreboard objectives add le.farmingJob dummy
scoreboard objectives add le.deliveryUUIDs dummy
scoreboard objectives add le.death custom:deaths

scoreboard players set .2 Legiticoins 2
scoreboard players set .beggingDuration le.beggingTimer 201
scoreboard players add .maxShopOwnership Legiticoins 0

scoreboard players operation .beggingInteractionThreshold le.beggingTimer = .beggingDuration le.beggingTimer
scoreboard players remove .beggingInteractionThreshold le.beggingTimer 60

schedule function legitieconomy:afk_schedule 60s replace

schedule function legitieconomy:coins/gadget/reef_rain/_schedule 300s replace 
schedule function legitieconomy:check_interaction 1s replace
schedule function legitieconomy:enable_begging 5s replace

schedule function legitieconomy:coins/legitichest/count_chests 5s replace
schedule function legitieconomy:coins/legitichest/rotation_schedule 5s replace

schedule function legitieconomy:coins/pet/validate_schedule 30s replace

schedule function legitieconomy:job/farming/crop_schedule 60s replace