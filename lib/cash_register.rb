

class CashRegister
  
  attr_accessor :total, :items
  
  def initialize(employee_discount=0)
    @employee_discount = employee_discount
    @total = 0
    @items = []
  end 
  
   def items
    @items 
  end 
  
  def discount
    @employee_discount
  end 
  
  def total 
    @total 
  end 
  
  def total=(money)
    @total = money
  end 
  
  def add_item(title, price, quantity=1)
    @total += (price * quantity)
    while quantity > 0
      @items << title 
      quantity -= 1 
    end 
    
  end 
  
  def apply_discount 
   if @employee_discount == 0
     return "There is no discount to apply."
   else 
      @total -= (@total * (@employee_discount.to_f/100)) 
      return "After the discount, the total comes to $#{@total.to_i}."
   end 
    
  end 
  
  def void_last_transaction
    @total = 0
  end 
  
  
  
  
end 
