
class CashRegister

  attr_accessor :total, :discount, :cart, :price, :item


  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def add_item(item, price, num_of_item = 1)
    # have an item and its price, item increases by one and the @total increases by the amount of the price

    # what do you want this function to do when you call it?


      # this calculates cost of one item
    @total += price * num_of_item
    @cart << @total
  end

  def apply_discount
    # we have a discount which will be applied to the total price
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
      #'After the discount, the total comes to #{@total.to_i}.'
    else
      'There is no discount to apply.'
    end
  end

  # def items
  #   # you want all the items in your cart
  #   only_items = []
  #   only_items << item
  # end

end
