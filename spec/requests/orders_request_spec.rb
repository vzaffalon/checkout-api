require 'rails_helper'

include ActiveJob::TestHelper

RSpec.describe "Orders", type: :request do


    describe ".create_order" do
        context "when sending valid data" do


            before do
                Rails.application.load_seed
                params = {
                    "payment": {
                        "card_number": "4002 4002 4002 4003",
                        "cvv": "748",
                        "exp_year": "2027",
                        "exp_month": "11",
                        "holder_name": "victor_marra"
                    },
                    "order_items": [
                        {
                            "quantity": 2,
                            "item_id": 1
                        },
                          {
                            "quantity": 3,
                            "item_id": 2
                        }
                    ]
                }
                post "/orders", params: params 
                @created_order = JSON.parse(response.body)
            end

            it 'created order' do
                expect(@created_order['id']).not_to eq(nil)
            end

            it 'created payment' do
                expect(@created_order['payment']['card_number']).not_to eq(nil)
            end

            it 'created order_items' do
                expect(@created_order['order_items'][0]['quantity']).to eq(2)
            end
        end
    end
end