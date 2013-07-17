class Basket
  attr_reader :items
  def initialize
    @items = []
  end
  def add item, quantity=1
    quantity.times{@items << item}
  end
end