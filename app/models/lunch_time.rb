# frozen_string_literal: true

class LunchTime
  attr_reader :items

  def initialize(items = [])
    @items = items
  end

  def add(name, product_id, quantity = 1)
    found_item = @items.find { |item| item.product_id == product_id }

    if found_item
      found_item.increment(quantity)
    else
      @items << RichContentOrder.new(name, product_id, quantity)
    end
  end

  def total_price
    total = @items.sum(&:total_price)
  end
end
