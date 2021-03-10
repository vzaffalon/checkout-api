class Payment < ActiveRecord::Base
    belongs_to :orders
end