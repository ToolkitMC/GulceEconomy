# 💰 GulceEconomy

Dialog tabanlı, vanilla Minecraft ekonomi sistemi. Herhangi bir plugin veya mod gerektirmez!

## 🎯 Özellikler

- ✅ **Dialog Menüleri** - Modern UI ile kullanıcı dostu arayüz
- 💰 **Para Sistemi** - Scoreboard tabanlı güvenilir ekonomi
- 🏪 **Mağaza Sistemi** - Kategorize edilmiş ürünler
- 💸 **P2P Transfer** - Oyuncular arası para gönderimi
- 📊 **İstatistikler** - Kişisel ekonomi istatistikleri
- ⚙️ **Admin Panel** - Gelişmiş yönetim araçları
- 🔒 **Güvenlik Uyarıları** - Kullanıcıları koruyan bilgilendirmeler

## 📦 Kurulum

1. `GulceEconomy` klasörünü Minecraft dünyasının `datapacks` klasörüne kopyalayın
2. `/reload` komutu ile datapack'i yükleyin
3. `/trigger economy` ile menüyü açın!

## 🎮 Kullanım

### Oyuncular için:
- `/trigger economy` - Ana menüyü açar
- Mağazadan ürün satın alın
- Diğer oyunculara para gönderin
- İstatistiklerinizi görüntüleyin

### Adminler için:
- Admin panelinden para ekle/çıkar
- Oyuncu bakiyelerini sıfırla
- Tüm oyunculara toplu para dağıt
- Tüm bakiyeleri görüntüle

**Yetki verme:**
- OP olan oyuncular otomatik erişime sahip
- Veya: `/tag <oyuncu> add op`

## ⚙️ Teknik Detaylar

- **Minecraft Sürümü:** 1.21.4+ (pack_format: 57)
- **Makro Sistemi:** `$` operatörü ile dinamik komutlar
- **Storage:** `gulceeconomy:ui` ve `gulceeconomy:temp`
- **Scoreboard:** `money`, `money_temp`, `shop_price`, `economy`

## 🔧 Özelleştirme

### Fiyat Değiştirme:
Dialog dosyalarındaki `price` parametrelerini düzenleyin:
```
/data/gulceeconomy/dialog/shop/*.json
```

### Yeni Ürün Ekleme:
```json
{
  "label": "🆕 Yeni Ürün - 100₺",
  "action": {
    "type": "minecraft:run_command",
    "command": "/function gulceeconomy:economy/buy {item:\"minecraft:item_id\",count:1,price:100}"
  }
}
```

### Yeni Kategori:
1. `/data/gulceeconomy/dialog/shop/` içine yeni JSON oluştur
2. `/data/gulceeconomy/function/ui/shop/` içine fonksiyon ekle
3. Ana mağaza menüsüne düğme ekle

## 🛡️ Güvenlik Özellikleri

- ⚠️ Kişisel bilgi paylaşımına karşı uyarılar
- 🔒 Gerçek para dolandırıcılığı bildirimleri
- ✅ Oyuncu var mı kontrolü
- 💸 Yeterli bakiye kontrolü
- 🚫 Kendine transfer engeli

## 📝 Gelecek Güncellemeler

- [ ] Bloklar mağaza kategorisi
- [ ] Özel eşyalar mağazası
- [ ] İşlem geçmişi takibi
- [ ] En çok satın alınan ürünler
- [ ] Günlük/haftalık ödüller
- [ ] Liderlik tablosu

## 🐛 Bilinen Sorunlar

Şu anda bilinen bir sorun bulunmamaktadır.

## 📄 Lisans

MIT License - Herkes tarafından özgürce kullanılabilir ve değiştirilebilir.

## 👤 Yapımcı

**ToolkitMC**
- GitHub: [github.com/ToolkitMC](https://github.com/ToolkitMC)

## 🙏 Katkıda Bulunma

Pull request'ler memnuniyetle karşılanır! Büyük değişiklikler için lütfen önce bir issue açın.

---

💡 **İpucu:** Datapack'i kullanırken sorun yaşarsanız, `/reload` komutunu tekrar deneyin!
