class Payment < ActiveRecord::Base
    belongs_to :orders, optional: true

    validates_presence_of :cvv, :holder_name, :exp_year, :exp_month, :card_number

    validates :cvv, length: {is: 3}
    validates :card_number, length: {minimum: 16, maximum: 20}
end