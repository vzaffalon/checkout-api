FactoryBot.define do
    factory :order do
        association :payment, factory: :payment
        association :order_items, factory: :order_items
    end

    factory :order_items do
        quantity { 2 }
        order_id { 1 }
    end

    factory :payment do
        card_number { "4002 4002 4002 4003"}
        cvv { "748" }
        exp_year { "2027" }
        exp_month { "1" }
        holder_name { "victor_marra" }
    end
end