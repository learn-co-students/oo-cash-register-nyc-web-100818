class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @items = []
    @discount=discount
  end

  def add_item(item,price,quantity=1)
    self.total += price*quantity
    @last_transaction = price*quantity
    quantity.times do
      @items.push(item)
    end
  end

  def apply_discount
    if self.discount ==0
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * self.discount/100)
      # 100 , 20 ; total-(total* discount/100)
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def void_last_transaction
     self.total -= @last_transaction
  end

end
