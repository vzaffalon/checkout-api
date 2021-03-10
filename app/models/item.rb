class Item < ActiveRecord::Base
    belongs_to :category

    def self.filter_by_params(params)
        scoped = self.where(nil)

        scoped = scoped.where('category_id = ?', params[:category_id]) if params[:category_id]

        scoped
    end
end