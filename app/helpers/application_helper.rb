module ApplicationHelper
  BlogName = '善良的杰夫'

  Categories = Category.all

  def get_title(title='')
    if title.blank?
      BlogName
    else
      title + ' - ' + BlogName
    end
  end

end
