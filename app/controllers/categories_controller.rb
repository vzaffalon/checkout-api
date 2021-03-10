class CategoriesController < ApplicationController
    def index
        @categories = Category.all
        if @categories
          render json: @categories
        else
          render json: @categories.errors, status: :unprocessable_entity
        end
    end
end