class CategoriesController < ApplicationController
  def show
    category = Category.find_by slug: params[:id]
    if category.nil?
      render status: 404
    else
      @articles = Article.where(category: category).order(created_at: :desc).
                    limit(per_page).offset(offset_num)
    end
  end

  def create
  end

  def destroy
  end

  def update
  end
end
