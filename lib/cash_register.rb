require 'pry'
class CashRegister
  
  attr_reader :discount
  attr_accessor :total, :items, :prices, :last_item,  :last_transaction 
  
  def initialize(discount=0)
    @discount = discount
    @total = 0 
    @items = []
    @prices = []
  end 
  
# def total=(total)
#   @total = total 
# end 

# def total
#   @total 
# end 
  
  def add_item(title, price, quantity=1)
    self.last_item = (price * quantity)
    @total += self.last_item
    quantity.times do 
      @items << title
    end
  end 
  
  def apply_discount
    if discount == 0 
      "There is no discount to apply."
    else 
      @total = (total * 0.8)
      "After the discount, the total comes to $#{total.to_i}."
    end
  end 
  
  def items
    @items 
  end 
  
  def void_last_transaction
    self.total -= self.last_item
  end
  
end 
