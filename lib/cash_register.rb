class CashRegister

  attr_accessor :items, :disc, :tot, :last_transaction

  def initialize(disc=0)
    @tot = 0
    @disc = disc
    @items = []
  end
  def add_item(title, amount, qty=1)
    self.tot += amount * qty
    qty.times do
      items << title
    end
    self.last_transaction = amount * qty
  end
  def void_last_transaction
    self.tot = self.tot - self.last_transaction
  end
end
def apply_discount
  if disc != 0
    self.tot = (tot * ((100.0 - disc.to_f)/100)).to_i
    "After the disc, the tot comes to $#{self.tot}."
  else
    "There is no disc to apply."
  end
end
