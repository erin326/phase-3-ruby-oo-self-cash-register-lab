require 'pry'

class CashRegister
    attr_accessor :total, :price, :discount, :items, :last_transaction
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total=(price)
        @total += price
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        @last_transaction = price * quantity
        quantity.times do 
            @items << title
        end
       
    end

    def apply_discount
     if self.discount > 0 
       
        @total = (self.total - (self.total * (@discount.to_f/100.00))).to_i
        "After the discount, the total comes to $#{self.total}."
     elsif self.discount == 0 || self.discount == nil
         "There is no discount to apply."
     end
    
    end

    def items
        @items
    end

    def void_last_transaction
    @total = self.total - self.last_transaction
        
    end

   
   

end

# def apply_discount
#     if @discount == nil
#         puts 'hi'
#     end
# end