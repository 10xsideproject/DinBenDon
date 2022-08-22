FactoryBot.define do
  factory :store do
    name { ['7-11', 'Mcdonald', '旭集', '老蔡水煎包'].sample }
    address { '我家巷子內' }
    tel { '3345678' }
  end
end
