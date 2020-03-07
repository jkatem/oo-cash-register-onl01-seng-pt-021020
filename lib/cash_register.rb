#
# class CashRegister
#
#   attr_accessor :total, :discount, :cart, :price
#
#
#   def initialize(discount = 0)
#     @total = 0
#     @discount = discount
#     @cart = []
#   end
#
#   def add_item(item, price, num_of_item = 1)
#     # have an item and its price, item increases by one and the @total increases by the amount of the price
#
#     # what do you want this function to do when you call it?
#
#
#       # this calculates cost of one item
#     @total += price * num_of_item
#     @cart << @total
#   end
#
#   def apply_discount
#     # we have a discount which will be applied to the total price
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#       #'After the discount, the total comes to #{@total.to_i}.'
#     else
#       'There is no discount to apply.'
#     end
#   end

#   def items
#     # you want all the items in your cart
#
#   end
#
# end


class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end