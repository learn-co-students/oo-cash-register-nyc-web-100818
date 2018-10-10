require 'pry'
class CashRegister
  attr_accessor :total

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def total
    @total
  end

  # def add_item(name, price, quantity=1)
  #   @total += price*quantity
  #   i = 0
  #   loop do
  #     @items << name
  #     i += 1
  #     if i >= quantity
  #       break
  #     end
  #   end
  # end  simplified this method in the next line but complicated #items

  def add_item(name, price, quantity=1)
    item = [name, price, quantity]
    @total += item[1]*item[2]
    @items << item
  end

  def apply_discount
    if @discount != nil
      @total -= @total*(@discount/100.0)
      if @total - @total.floor == 0.0
        "After the discount, the total comes to $#{self.total.to_i}."
      else
        "After the discount, the total comes to $#{self.total}."
      end
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @items.last[1]
  end

  def items
    items = []
    @items.each do |item|
      i = 0
        loop do
          items << item[0]
          i += 1
          if i >= item[2]
            break
          end
        end
      end
      items
    end


end

# binding.pry
