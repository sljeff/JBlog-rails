class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def per_page
    20
  end

  def page_num
    if params[:pagenum].nil?
      0
    else
      params[:pagenum].to_i
    end
  end
  
  def offset_num
    page_num * per_page
  end
end
