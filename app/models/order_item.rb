class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :item

    before_create :set_price
    before_create :set_total_amount

    def set_price
        self.price = self.item.price
    end

    def set_total_amount
        self.total_amount = self.price * self.quantity
    end

end