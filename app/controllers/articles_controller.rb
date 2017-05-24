class ArticlesController < ApplicationController
  def index
    @articles = Article.order(created_at: :desc).limit(per_page).
                    offset(offset_num)
    if page_num == 1
      @preLink = articles_path
    elsif page_num > 1
      @preLink = articles_path(pagenum: page_num - 1)
    end
    if @articles.length == per_page
      @nextLink = articles_path(pagenum: page_num + 1)
    end
  end

  def show
    @article = Article.find_by(slug: params[:slug])
    if @article.nil?
      render status: 404
    end
  end
end
