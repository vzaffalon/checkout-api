class Order < ActiveRecord::Base
    has_many :order_items
    has_one :payment

    accepts_nested_attributes_for :order_items
    accepts_nested_attributes_for :payment

    before_create :set_total_amount
    before_create :create_order_code

    def set_total_amount
        self.total_amount = self.order_items.sum(:total_amount)
    end

    def create_order_code
        self.code = SecureRandom.hex
    end
end