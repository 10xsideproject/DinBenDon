# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  # before_create :get_total

  # def get_total
  #   self.qunaitiy.to_i * self.product_id.price
  # end
  def self.total_price
    lunch_time = LunchTime.new
    orders = Order.all
    orders.each do |order|
      lunch_time.add(order.id)
    end
    lunch_time.total_price
  end
end
