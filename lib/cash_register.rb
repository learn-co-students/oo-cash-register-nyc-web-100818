class CashRegister

  attr_accessor :total, :discount, :price

def initialize(discount=0)
  @discount = discount
  @total = 0
  @ITEMS = []
end

def total
  @total
end

def add_item(title, price, quantity=1)
  @quantity = quantity
  @total += (quantity * price)
  quantity.times do
    @ITEMS << title
  @price = price
end

end

def apply_discount
  if discount == 0
    return "There is no discount to apply."
  else
    # @amount_off = @total * @discount
    # @total -= @amount_off
    @total -= (@total * (discount.to_f/100))
    return "After the discount, the total comes to $#{@total.to_i}."
  end

end



def items
  @ITEMS
end

def void_last_transaction
  @total -= @price
  @ITEMS.pop
end





end
