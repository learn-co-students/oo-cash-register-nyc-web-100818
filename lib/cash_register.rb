require "pry"

class CashRegister

attr_reader
attr_writer :total

attr_accessor :discount, :item_array, :price

def initialize(emp_discount = 0)
  @total = 0
  @discount = emp_discount
  @item_array = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @item = title
  @quantity = quantity
  @price = price
  @total += (price * quantity)
  quantity.times do
  @item_array.push(@item)
  end
end

def apply_discount
  if @discount > 0
    @total = @total * ((100 - @discount.to_f)/100)
    return "After the discount, the total comes to $#{@total.to_i}."
  else
    return "There is no discount to apply."
  end
end

def items
  @item_array
end

def void_last_transaction
  @total -= @price
end

end #class CashRegister
