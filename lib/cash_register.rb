require "pry"

class CashRegister
  attr_accessor :total, :discount, :basket, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []
  end

  def add_item(title, price, quantity = 1)
    @last_transaction = self.total += (quantity * price)
    quantity.times do |item|
      self.basket << title
    end
  end

  def apply_discount
    if @discount > 0
      self.total = total - (total * (discount.to_f / 100.0))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    self.basket
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end #end of CashRegister class
