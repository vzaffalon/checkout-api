class Order < ActiveRecord::Base
    has_many :order_items
    has_many :payments

    accepts_nested_attributes_for :order_items
    accepts_nested_attributes_for :payments

    after_create :set_total_amount
    after_create :create_order_code

    def set_total_amount
        self.total_amount = self.order_items.sum(:total_amount)
        self.save!
    end

    def create_order_code
        self.code = SecureRandom.hex
        self.save!
    end
end