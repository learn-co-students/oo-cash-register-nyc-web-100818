class CashRegister
attr_accessor :total, :discount, :items, :previous_transaction

  def initialize(discount=0)
    @total = 0 #sets an instance variable @total on initialization to zero
    @discount = discount #optionally takes an employee discount on initialization
    @items = []

  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.previous_transaction = amount * quantity
  end
  # def add_item(title, price, quantity = 1)
  #   if quantity > 1
  #     i = 0
  #     while  i < quantity
  #       @items << title
  #       i += 1
  #     end
  #   else
  #     @items << title
  #   end
  #
  #   @total += price*quantity
  #   @previous_transaction = @total
  #   @total
  # end


  def apply_discount()
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."

    end
  end
  # def apply_discount
  #   if @discount > 0
  #     @discount = @discount/100.to_f
  #     @total = @total - (@total * (@discount))
  #     "After the discount, the total comes to $#{total.to_i}."
  #   else
  #     "There is no discount to apply."
  #   end
  # end


  def void_last_transaction
    self.total = self.total - self.previous_transaction
  end
  # def void_last_transaction()
  #   @total -= @last_amount
  # end

end


# Add items of varying quantities and prices
# Calculate discounts
# Keep track of what's been added to it
# Void the last transaction
