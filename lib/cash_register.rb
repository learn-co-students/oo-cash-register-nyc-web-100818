class CashRegister
  #define the methods for the instance variables
  attr_accessor :total, :discount, :items, :void_last_transaction

  def initialize(discount = 0) # default val if no discount
    @total = 0 # initialize total at 0
    @discount = discount # if discount is there then it equal discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    while quantity > 0
      @items << title
      quantity -= 1
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
   else
     @total -= (@total * (@discount.to_f/100))
     return "After the discount, the total comes to $#{@total.to_i}."
  end
end

  def items
    @items
  end

  def void_last_transaction
    @total = 0
  end

end
