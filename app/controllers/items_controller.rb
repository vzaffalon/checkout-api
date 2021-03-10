class ItemsController < ApplicationController
    def index
        @items = Item.all
        if @items
          render json: @items
        else
          render json: @items.errors, status: :unprocessable_entity
        end
    end
end