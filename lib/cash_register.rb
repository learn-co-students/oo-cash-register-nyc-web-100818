require 'pry'
class CashRegister
  attr_accessor :total, :discount, :item

  def initialize(discount=0)
    #set employee discount var default value
    @total = 0#set instance var @total on initialization = 0
    #will account for current total
    @discount = discount
    @cart = []

    #puts discount
  end


    #Add items of varying quantities and prices:
  # => accepts a title and a price and increases the total
  # => also accepts an optional quantity
  # => doesn't forget about the previous total

  #amount is 1, optional
  def add_item(item, price, amount = 1) #accepts a title and a price,
    item_hash = {}
    item_hash[:name] = item
    item_hash[:price] = price
    item_hash[:amount] = amount
    #cart << item, price, amount (macbook air, 1000, 1)
    @cart << item_hash


      #doesn't forget about ***prev. total: increment current total by (price * amount)
    self.total += price * amount
    #(book, 5.0, 3) = $15 (price * amt)

  end

  def apply_discount
    #register already initialized w/ discount
      # if no discount
    return "There is no discount to apply." if @discount == 0
    #if discount, total price * discount = final price taken off

    @total -= (@total * @discount/100)
        #reduce total by percent discount
      return "After the discount, the total comes to $#{@total}."

  end

      #'returns an array containing all items that have been added'

  def items
    #returns an array:
    item_array = []
    #binding.pry
    @cart.each do |item_hash|
      #because in add item we get a {name: tomato, price: 1.99, amount = 1}
      # we need to use the amount and item name to put the names of all hte items in a new item_array
      #but we need to put the NAMES, not the amounts- so if name = tomato and amount = 2, will push into array:
      # item_array << "tomato", "tomato"
      item_hash[:amount].times do
        #array containing all ELEMENTS that have been added:
        item_array << item_hash[:name]
      end
    end
    item_array
  end

        #subtracts the last transaction from the total !
        #@total = total
        #total = total of last purchase

  def void_last_transaction
    @total -= self.total #the prev total! (which added price * amount to total)
  end
  #in the add_item method, accounted for previous total like so:
  # doesn't forget about ***prev. total: increment current total by (price * amount)
  # => self.total += price * amount ( #(book, 5.0, 3) = $15 (price * amt))


end
