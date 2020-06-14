class CashRegister

  attr_accessor :total, :discount, :quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    #for every item, add its name on every occurrence into items list
    quantity.times {@items << item}
      #current total at this instance adds new item price
    self.total += price * quantity 
  end

  def apply_discount
    return "There is no discount to apply." if discount == 0
    #discount = total * discount(percentage)
     self.total -= (@total * @discount/100)
     "After the discount, the total comes to $#{@total}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= self.total
  end

end
