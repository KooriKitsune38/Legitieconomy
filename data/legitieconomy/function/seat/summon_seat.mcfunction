advancement revoke @s only legitieconomy:temp_seat

execute align y if entity @n[type=interaction,tag=le.seat,dy=1] if entity @n[type=text_display,tag=le.tempSeat,dy=1] run return fail

execute align xyz run summon text_display ~.5 ~ ~.5 {Tags:[le.tempSeat]}
ride @s mount @n[type=text_display,tag=le.tempSeat,distance=..0.1]