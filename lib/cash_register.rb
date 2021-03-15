class CashRegister
    attr_accessor :total, :discount, :item_list, :title, :previous_item

    def initialize(discount = 0)
        self.discount = discount
        self.total = 0
    end

    def add_item(title, price, quantity = 1)
       self.total += price * quantity
       if self.item_list == nil
        self.item_list = []

        self.item_list.concat([title] * quantity)
       else

        self.item_list.concat([title] * quantity)
       end
       self.previous_item = price * quantity

    end

    def apply_discount
        if self.discount > 0 
            self.total -= (self.discount.to_f / 100) * self.total
            return "After the discount, the total comes to $#{self.total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @item_list
    end

    def void_last_transaction
        self.total -= self.previous_item
    end


end

