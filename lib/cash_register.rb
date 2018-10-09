class CashRegister
  
  attr_accessor :total
  
  def initialize(discount=0)
    @discount = discount
    @total = 0 
    @items = []
  end 
  
  def discount
    @discount
  end 

  def add_item(title, price, quantity=1)
     @total += price * quantity
     i = 0 
     until i == quantity
      @items.push(title)
      i += 1
     end 
     @last_transaction = @total
  end 
  
  def apply_discount
    if @discount == 0 
      return "There is no discount to apply."
    else 
      @total -= @total * @discount / 100 
      return "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total -= @last_transaction
  end 
end 

# CashRegister.new
