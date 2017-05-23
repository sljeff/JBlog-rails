class TimesController < ApplicationController
  def show
    start_time = params[:from].to_time
    end_time   = params[:to].to_time + 1.day - 1.second
    @articles  = Article.where(created_at: (start_time..end_time))
  end
end
