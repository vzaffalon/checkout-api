class Order < ActiveRecord::Base
    has_many :order_items
    has_one :payment

    validates_presence_of :order_items
    validates_presence_of :payment

    accepts_nested_attributes_for :order_items
    accepts_nested_attributes_for :payment

    before_create :create_order_code
    after_create :set_total_amount

    def create_order_code
        self.code = SecureRandom.hex(3)
    end

    def set_total_amount
        self.total_amount = self.order_items.sum(:total_amount)
    end
end