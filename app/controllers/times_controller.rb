class TimesController < ApplicationController
  def show
    start_time = params[:from].to_time
    end_time   = params[:to].to_time + 1.day - 1.second
    start_date = get_date(start_time)
    end_date = get_date(end_time)
    @title = start_date + ' to ' + end_date
    @articles  = Article.where(created_at: (start_time..end_time)).
                    order(created_at: :desc).limit(per_page).offset(offset_num)
    if page_num == 1
      @preLink = time_path(date_in_url(start_date), date_in_url(end_date))
    elsif page_num > 1
      @preLink = time_path(date_in_url(start_date), date_in_url(end_date),
                            pagenum: page_num - 1)
    end
    if @articles.length == per_page
      @nextLink = time_path(date_in_url(start_date), date_in_url(end_date),
                            pagenum: page_num + 1)
    end
  end

  private
    def get_date(the_time)
      the_time.to_s.split[0]
    end

    def date_in_url(date_time)
      date_time.split('-').join
    end
end
