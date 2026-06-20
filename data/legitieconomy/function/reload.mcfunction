scoreboard objectives add Legiticoins dummy
scoreboard objectives add beg trigger
scoreboard objectives add le.beggingTimer dummy
scoreboard objectives add le.beggarUUID dummy
scoreboard objectives add le.gadgetValues dummy

scoreboard players set .2 Legiticoins 2
scoreboard players set .beggingDuration le.beggingTimer 201

scoreboard players operation .beggingInteractionThreshold le.beggingTimer = .beggingDuration le.beggingTimer
scoreboard players remove .beggingInteractionThreshold le.beggingTimer 60

schedule function legitieconomy:check_interaction 1s replace
schedule function legitieconomy:enable_begging 5s replace
schedule function legitieconomy:coins/legitichest/count_chests 5s replace
schedule function legitieconomy:coins/legitichest/rotation_schedule 5s replace