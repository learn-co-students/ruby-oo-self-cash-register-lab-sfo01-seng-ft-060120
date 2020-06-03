require 'pry'

class CashRegister
    attr_accessor :total

    def initialize(employee_discount=0)
        @total = 0
        @employeediscount = employee_discount
        @@cart = []
    end

    def discount
        @employeediscount
    end

    def add_item(item, price, quantity=1)
        @last_transaction = price * quantity
        @total += price * quantity
        quantity.times do
            @@cart << item
        end
    end

    def apply_discount
        if @employeediscount > 0
            @total *= ((100.0 - @employeediscount) / 100.0)
            "After the discount, the total comes to $" + @total.to_i.to_s + "."
        else
            "There is no discount to apply."
        end 
    end

    def items
        @@cart
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end