require 'rails_helper'

RSpec.describe LunchTime, type: :model do
  it 'it\'s just work!!' do
    # A = Arrange
    a = 1
    b = 2
    # A = Act
    c = a + b
    # A = Assert
    expect(c).to be 3
  end

  it '下訂單後同樣單品算作一類，數量累加' do  end
  it '每樣單品可以計算自己的金額（小計）' do  end
  it '整份訂單可以計算全部的金額（總計）' do  end
  it '可以隨機下訂一份單品（從大家點過的）' do  end
  it '可以隨機下訂一份單品（從所有選擇）' do  end
  it '可以將ＸＸ內容轉換成 Hash 並存到 Session' do  end
  it '可以從 Session 取出 Hash 並還原ＸＸ內容' do  end
  it '抽獎抽出下次主揪' do  end
end
