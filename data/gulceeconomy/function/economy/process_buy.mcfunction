# Satın alma işlemini gerçekleştir
# Parametreler: item, count, price

# Parayı düş
$scoreboard players remove @s money $(price)

# Ürünü ver
$give @s $(item) $(count)

# Bildirim
$tellraw @s ["",{"text":"[Ekonomi] ","color":"green","bold":true},{"text":"Başarılı! ","color":"yellow"},{"text":"$(count)x ","color":"aqua"},{"text":"$(item)","color":"white"},{"text":" satın alındı. (-$(price)₺)","color":"gold"}]

# Ses efekti
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
