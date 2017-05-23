class TagsController < ApplicationController
  def show
    tag = Tag.find_by slug: params[:id]
    if tag.nil?
      render status: 404
    else
      @articles = tag.articles.order(created_at: :desc).
                    limit(per_page).offset(offset_num)
    end
  end

  def create
  end

  def destroy
  end
end
