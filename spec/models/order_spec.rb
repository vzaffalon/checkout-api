require 'rails_helper'

include ActiveJob::TestHelper

RSpec.describe "Order", type: :model do

    describe ".Order creation" do
        before do
            @order = FactoryBot.create(:order)
        end

        it 'calculate_total_amount' do
            expect(@order.total_amount).to eq(400)
        end
    end
end