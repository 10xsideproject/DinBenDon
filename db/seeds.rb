# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
store = Store.create(
  name: '一級排骨',
  address: '台北市成都路27巷11號B1',
  tel: '0223719739'
)

p "建立商店 : #{store.name} - #{store.address} (#{store.tel})"

products = [
  '一級排骨',
  '炸雞腿',
  '無骨雞排',
  '無骨蜜酥雞腿',
  '滷蔥雞腿',
  '蒲燒鯛魚',
  'ＢＢＱ烤雞腿',
  '60年代雞腿',
  '宮保雞丁',
  '手工蝦捲',
  '檸檬雞翅',
  '藍帶豬排',
  '蒜泥白肉',
  '古早味控肉',
  '黃金鱈魚',
  '素食'
]

product_price = [100,100,90,110,100,85,110,100,90,90,90,80,95,95,100,80]

products.zip(product_price).each { |a, b|
  pp = store.products.create(name: a, price: b)
  p "  建立商品 : #{pp.name} (#{pp.price})"
}
