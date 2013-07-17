require 'spec_helper'

describe Till do

  context 'total_for' do

    it 'can handle empty baskets' do
      till = Till.new({})
      till.total_for(Basket.new).should == 0
    end
    it 'gives the total price for the items in the basket' do
      till = Till.new 'orange' => 20,
                      'apple' => 10

      basket = Basket.new
      basket.add('orange')
      basket.add('apple')
      till.total_for(basket).should == 30
    end
  end

end

describe Basket do
  describe 'add' do
    it 'takes items' do
      items = %w(orange apple banana)
      basket = Basket.new
      items.each{|item| basket.add item}

      basket.items.should == items
    end

    it 'can take a quantity' do

      basket = Basket.new
      basket.add 'orange', 3
      basket.items.should == %w(orange orange orange)
    end
  end

end

