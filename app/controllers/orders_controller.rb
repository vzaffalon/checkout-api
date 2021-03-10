class OrdersController < ApplicationController

    before_action do
        params[:payment_attributes] = params.delete :payment
        params[:order_items_attributes] = params.delete :order_items
    end


    def index
        @orders = Order.all
        if @orders
          render json: @orders
        else
          render json: @orders.errors, status: :unprocessable_entity
        end
    end

    def create
        @order = Project.new(order_params)
        if @order.save
          render json: @order
        else
          render json: @order.errors, status: :unprocessable_entity
        end
    end

    def order_params
        params.permit( 
            payment_attributes: %i[card_number cvv exp_year exp_month holder_name],
            order_items_attributes: [
                :quantity,
                :item_id
            ]
        )
    end
end