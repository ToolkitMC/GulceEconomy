# Zırh setini ver
# Parametreler: type (iron/diamond), price

# Parayı düş
$scoreboard players remove @s money $(price)

# Zırh parçalarını ver
$give @s minecraft:$(type)_helmet 1
$give @s minecraft:$(type)_chestplate 1
$give @s minecraft:$(type)_leggings 1
$give @s minecraft:$(type)_boots 1

# Bildirim
$tellraw @s ["",{"text":"[Ekonomi] ","color":"green","bold":true},{"text":"Başarılı! ","color":"yellow"},{"text":"$(type)","color":"aqua"},{"text":" zırh seti satın alındı. (-$(price)₺)","color":"gold"}]

# Ses efekti
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
