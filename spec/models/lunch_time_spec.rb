require 'rails_helper'

RSpec.describe LunchTime, type: :model do
  let(:name_geneator) { ['皮卡丘', '妙蛙種子', '小火龍', '傑尼龜'] }
  let(:product_geneator) {
    ['小籠包', '雞排', '披薩', '麻辣鍋'].map.with_index { |product, i|
      create(:product, name: product, price: 30 + i * 19, store: create(:store))
    }
  }

  it 'It\'s just work!!' do
    # A = Arrange
    a = 1
    b = 2
    # A = Act
    c = a + b
    # A = Assert
    expect(c).to be 3
  end

  it '下訂單後同樣單品算作一類，數量累加' do
    lunch_time = LunchTime.new
    names = name_geneator
    products = product_geneator
    
    10.times { |i|
      order = create(:order, name: names[i % 4], product: products[i % 4])
      lunch_time.add(order[:name], order[:product_id], order[:quantity])
    }

    expect(lunch_time.items.count).to be 4
    expect(lunch_time.items.second.quantity).to be 3
  end
  
  it '每樣單品可以計算自己的金額（小計）' do
    lunch_time = LunchTime.new
    names = name_geneator
    products = product_geneator
    
    10.times { |i|
      order = create(:order, name: names[i % 4], product: products[i % 4])
      lunch_time.add(order[:name], order[:product_id], order[:quantity])
    }

    expect(lunch_time.items.first.total_price).to be 90
    expect(lunch_time.items.second.total_price).to be 147
  end

  it '整份訂單可以計算全部的金額（總計）' do
    lunch_time = LunchTime.new
    names = name_geneator
    products = product_geneator
    
    10.times { |i|
      order = create(:order, name: names[i % 4], product: products[i % 4])
      lunch_time.add(order[:name], order[:product_id], order[:quantity])
    }

    expect(lunch_time.total_price).to be 547
  end
  
  it '可以隨機下訂一份單品（從大家點過的）' do  end
  it '可以隨機下訂一份單品（從所有選擇）' do  end
  it '可以將ＸＸ內容轉換成 Hash 並存到 Session' do  end
  it '可以從 Session 取出 Hash 並還原ＸＸ內容' do  end
  it '抽獎抽出下次主揪' do  end

  private

  def products
    
  end
end
