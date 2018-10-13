require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :last_transaction # going to change, so must be able to be reset and read out

  def initialize(discount = 0) # optional discount upon initialization
    @discount = discount
    @total = 0 # initialize total at 0
    @items = []
  end

  # INSTANCE METHODS => BEHAVIORS, not ATTRIBUTES like :discount, :total, etc.
  def add_item(title, p, q=1) # accepts a title and a price AND inc. the total. Optional quantity set to 1 since u will always have at least one item.
    @total += (p*q) # @ total is price times quantity, and increments (does not forget previous total as u add new items)
    q.times do # want to add the item as many times to the list as its quantity so keep doing this the # of times its quantity is
      @items << title
    end
    @last_transaction = p # the last transaction = the price of the last item added
  end

  def apply_discount
    if @discount != 0 # if cash register initialized WITH a discount
      @total *= 0.80
      "After the discount, the total comes to $#{@total.to_i}." # had to do .to_i bc currently total is a float
    else # else the cash register discount = 0 aka no discount
      "There is no discount to apply."
    end
  end

  def items # reader for the @items instance variable
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end

# binding.pry
# puts "hello"
