class CashRegister
  #define the methods for the instance variables
  attr_accessor :total, :discount, :items, :last_transaction, :quantity, :title

  def initialize(discount = 0) # default val if no discount
    @total = 0 # initialize total at 0
    @discount = discount # if discount is there then it equal discount
    @items = [] # empty cart here
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)

    while quantity > 0
      @items << title
      quantity -= 1
    end

    @last_transaction = price # price constantly gets rewritten to most recent price 
  end

  def apply_discount
    if @discount != 0 # if there is a discount to apply...
      @total *= 0.80 # applying discount
      "After the discount, the total comes to $#{@total.to_i}."
    else # if there is NOT discount...
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= last_transaction
  end

end

# def add_item(item, p, q=nil)
#   @total += p*q
# end

# def add_item(title, p, q = 1)
#   # accepts a title and a price and inc the @total
#     # increment total by p
#     @total += p * q
#     q.times do
#       @items << title
#     end
#     @last_transaction = p*q
# end
#
# def apply_discount
#   if @discount != 0
#     @total *= 0.80
#     "After the discount, the total comes to $#{self.total.to_i}."
#   else
#     "There is no discount to apply."
#   end
# end
#
# def void_last_transaction
# 	@total -= @last_transaction
# end
