class Till
  def initialize prices
    @prices = prices
  end

  def total_for basket
    basket.items.inject(0){|total, item| total += @prices[item]}
  end
end