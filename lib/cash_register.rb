require 'pry'

class CashRegister

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  attr_accessor :discount, :total

  def add_item(item,price,quantity=1)
    quantity.times{@items << item}
    @last_transaction = price * quantity
    @total += @last_transaction
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total -= discount * 0.01 * @total
    "After the discount, the total comes to $" + @total.to_int.to_s + "."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
