class OrderSerializer < ActiveModel::Serializer
    attributes :id, :code, :total_amount
  
    has_one :payment
    has_many :order_items
end
  