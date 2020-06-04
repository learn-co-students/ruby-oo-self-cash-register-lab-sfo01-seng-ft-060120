require 'pry'

class CashRegister

    attr_accessor :total, :discount, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @last_transaction = []
        @all_items = []
        @all_prices = 0
    end

    def apply_discount
        if @discount > 0
                self.total *= ((100.0 - @discount.to_f)/100.0)
            "After the discount, the total comes to $#{self.total.to_i}."
            else
            "There is no discount to apply."
        end
    end

    def add_item(title,price,quantity = 1)
        quantity.times do
            @all_items << title
        end
        @last_transaction = price * quantity
        self.total += (price * quantity)  
    end

    def void_last_transaction
        self.total -= @last_transaction
    end

    def items
        @all_items
    end
end