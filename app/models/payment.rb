class Payment < ActiveRecord::Base
    belongs_to :orders, optional: true
end