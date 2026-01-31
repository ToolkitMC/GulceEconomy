# Zırh seti satın alma
# Parametreler: type (iron/diamond), price

# Fiyatı scoreboard'a kaydet
$scoreboard players set #price shop_price $(price)

# Yeterli para var mı?
$execute if score @s money >= #price shop_price run function gulceeconomy:economy/give_armor_set {type:"$(type)",price:$(price)}

# Yeterli para yok
$execute unless score @s money >= #price shop_price run tellraw @s ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Yetersiz bakiye! Gerekli: ","color":"yellow"},{"text":"$(price)₺","color":"gold"}]

# Menüye geri dön
function gulceeconomy:ui/show_shop
