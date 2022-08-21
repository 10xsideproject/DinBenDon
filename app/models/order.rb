class Order < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  before_create :get_total

  private
  def get_total
    self.qunaitiy * self.product_id.price
  end
end
