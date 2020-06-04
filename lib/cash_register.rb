require 'pry'

class CashRegister
  attr_accessor :total, :discount, :cart, :price, :title
  def initialize(discount = 0)
     @total = 0
     @discount = discount
     @cart = []
    # binding.pry
  end

def add_item(title, price, quantity = 1)
  @old_total = total
self.total += quantity * price 
 quantity.times {@cart << title}
    # binding.pry 
end

def apply_discount
  if self.discount == 0
    "There is no discount to apply."
  else 
    self.discount
   @total = @total - (total * @discount / 100)
    "After the discount, the total comes to $#{total}."
  end
    # binding.pry
end

  def items
    @cart
#  binding.pry
  end

  def void_last_transaction
    # subtract last item from total
  if @old_total == 0.0
    @total = 0.0
  else
    @total = @old_total
  end

end
end

