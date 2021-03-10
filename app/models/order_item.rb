class OrderItem < ActiveRecord::Base
    belongs_to :order

    after_create :set_total_amount

    def set_total_amount
        self.total_amount = self.price * self.quantity
        self.save!
    end
end