class CategoriesController < ApplicationController
  def show
    category = Category.find_by slug: params[:slug]
    if category.nil?
      @title = 'Not Found'
      render template: 'articles/index', status: 404
    else
      @title = category.name
      @articles = Article.where(category: category).order(created_at: :desc).
                    limit(per_page).offset(offset_num)
      if page_num == 1
        @preLink = category_path(category)
      elsif page_num > 1
        @preLink = category_path(category, pagenum: page_num - 1)
      end
      if @articles.length == per_page
        @nextLink = category_path(category, pagenum: page_num + 1)
      end
      render template: 'articles/index'
    end
  end

  def create
  end

  def destroy
  end

  def update
  end
end
