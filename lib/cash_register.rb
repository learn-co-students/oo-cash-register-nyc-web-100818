class CashRegister
attr_accessor :discount, :total, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

def add_item(item, price, quantity = 1)
  @total += (price * quantity)
  while quantity > 0
    @items << item
    quantity -= 1
  end
    @last_price = price
end

def apply_discount
  if discount == 0
    return "There is no discount to apply."
  else
    @total -= (@total * (discount.to_f/100))
    return "After the discount, the total comes to $#{@total.to_i}."
  end
end

def items
  @items
end

def void_last_transaction
  @total = @total - @last_price
end



end
