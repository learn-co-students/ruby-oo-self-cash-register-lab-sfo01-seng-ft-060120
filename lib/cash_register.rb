require "pry"

class CashRegister
    # define setters/getters Macro
    # define @@ total array of items?
    # define initiation method
    attr_accessor :items, :discount, :total, :last_transaction


    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
    end

    # accepts a title and a price and increases the total (FAILED - 4)
    # also accepts an optional quantity (FAILED - 5)
    # doesn't forget about the previous total (FAILED - 6)
    def add_item(title, price, quantity=1)
        self.last_transaction = self.total

        quantity.times{self.items << title}
        self.total += price*quantity
    end

#  the cash register was initialized with an employee discount
#     applies the discount to the total price (FAILED - 7)
#     returns success message with updated total (FAILED - 8)
#     reduces the total (FAILED - 9)
#   the cash register was not initialized with an employee discount
#     returns a string error message that there is no discount to apply (FAILED - 10)
    def apply_discount
        if self.discount != nil
            self.total = (self.total - (self.total * (self.discount.to_f / 100))).to_i
            return "After the discount, the total comes to $#{self.total}."
        else
            return "There is no discount to apply."
        end
    end

    # subtracts the last item from the total (FAILED - 12)
    # returns the total to 0.0 if all items have been removed (FAILED - 13)
    def void_last_transaction
        if self.last_transaction == 0
            self.total = 0.0
        else
            self.total = self.last_transaction
        end
    end
end
