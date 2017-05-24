class TagsController < ApplicationController
  def show
    tag = Tag.find_by slug: params[:id]
    if tag.nil?
      render tempalte: 'articles/index', status: 404
    else
      @title = tag.name
      @articles = tag.articles.order(created_at: :desc).
                    limit(per_page).offset(offset_num)
      if page_num == 1
        @preLink = tag_path(tag)
      elsif page_num > 1
        @prelink = tag_path(tag, pagenum: page_num - 1)
      end
      if @articles.length == per_page
        @nextLink = tag_path(tag, pagenum: page_num + 1)
      end
      render tempalte: 'articles/index'
    end
  end

  def create
  end

  def destroy
  end
end
