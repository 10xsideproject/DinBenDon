# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :store
  validates :name, presence: true
  validates :price, presence: true
end
