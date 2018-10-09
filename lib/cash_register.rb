require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    self.items.fill(title, self.items.length, quantity)
    self.last_transaction = price
  end

  def apply_discount
    if self.discount > 0
      discount_percent = (100 - self.discount).to_f / 100
      self.total = (self.total * discount_percent).round(0)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end
end
