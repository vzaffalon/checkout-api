class Order < ActiveRecord::Base
    has_many :order_items

    after_create :set_total_amount

    def set_total_amount
        self.total_amount = self.order_items.sum(:total_amount)
        self.save!
    end
end