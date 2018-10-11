class CashRegister

  attr_accessor :total, :discount, :quantity, :employee_discount, :last_transaction

# CashRegister ::new sets an instance variable @total on initialization to zero

# ::new
# sets an instance variable @total on initialization to zero
# optionally takes an employee discount on initialization
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @employee_discount = employee_discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    @last_transaction = price * quantity
    # @items << quantity * title
    # @items << quantity, title
      quantity.times do |i|
        # title.push * i
        @items << title
    end
  end

  def apply_discount
    if discount > 0
      self.total = @total - (@total * discount/100)
      return "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    # last_transaction = @total.last
    #@total -= last_transaction
    #self.total -= total.last
    @total -= @last_transaction
  end
end
