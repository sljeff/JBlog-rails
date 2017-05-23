class ArticlesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc).limit(per_page).
                    offset(offset_num)
  end

  def show
    @article = Article.find_by slug: params[:id]
    if @article.nil?
      render status: 404
    end
  end
end
