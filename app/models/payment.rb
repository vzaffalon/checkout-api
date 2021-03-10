class Payment < ActiveRecord::Base
    belongs_to :orders

    after_create :create_order_code

    def create_order_code
        self.code = SecureRandom.hex
        self.save!
    end
end