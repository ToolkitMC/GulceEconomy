# Ürün satın alma sistemi
# Parametreler: item, count, price

# Fiyatı scoreboard'a kaydet
$scoreboard players set #price shop_price $(price)

# Yeterli para var mı?
$execute if score @s money >= #price shop_price run function gulceeconomy:economy/process_buy {item:"$(item)",count:$(count),price:$(price)}

# Yeterli para yok
$execute unless score @s money >= #price shop_price run tellraw @s ["",{"text":"[Ekonomi] ","color":"red","bold":true},{"text":"Yetersiz bakiye! Gerekli: ","color":"yellow"},{"text":"$(price)₺","color":"gold"}]

# Menüye geri dön
function gulceeconomy:ui/show_shop
