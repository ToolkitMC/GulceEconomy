# Transfer dialog'unu hazırla:
data modify storage gulceeconomy:ui dialog.type set value "minecraft:multi_action"
data modify storage gulceeconomy:ui dialog.inputs set value [{"type":"minecraft:text","key":"target","label":"🎯 Alıcı Oyuncu Adı","max_length":16},{"type":"minecraft:text","key":"amount","label":"💰 Miktar (₺)","max_length":10}]
data modify storage gulceeconomy:ui dialog.actions set value [{"label":"✅ Gönder","action":{"type":"minecraft:dynamic/run_command","template":"/function gulceeconomy:economy/transfer {target:\"$(target)\",amount:$(amount)}"}}]
data modify storage gulceeconomy:ui dialog.exit_action set value {"label":"🔙 Ana Menü","action":{"type":"minecraft:run_command","command":"/function gulceeconomy:ui/show_main"}}
data modify storage gulceeconomy:ui dialog.pause set value false
data modify storage gulceeconomy:ui dialog.can_close_with_escape set value true
$data modify storage gulceeconomy:ui dialog.body set value {"type":"minecraft:plain_message","contents":"§l§6💰 Bakiyeniz: §a$(balance)₺\n\n§c⚠️ DİKKAT: Kişisel bilgilerinizi paylaşmayın!\n§c🔒 Gerçek para ile ilgili teklifler dolandırıcılıktır!\n\n§7Para göndermek için bilgileri girin:"}
data modify storage gulceeconomy:ui dialog.title set value {"text":"💸 Para Gönder","color":"yellow","bold":true}

# Transfer dialog'unu göster
function gulceeconomy:ui/show_dialog with storage gulceeconomy:ui