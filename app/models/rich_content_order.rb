class RichContentOrder
  attr_reader :name, :product_id, :quantity

  def initialize(name, product_id, quantity = 1)
    @name = name
    @product_id = product_id
    @quantity = quantity
  end

  def increment(quantity = 1)
    @quantity = @quantity + quantity
  end
end
