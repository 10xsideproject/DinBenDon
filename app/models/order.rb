# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :product
  validates :name, presence: true
  # before_create :get_total

  # def get_total
  #   self.qunaitiy.to_i * self.product_id.price
  # end
end
