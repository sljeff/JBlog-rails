module ArticlesHelper
  def overview(content)
    backslash_p = '</p>'
    index_of_p = content.index(backslash_p, 200)
    if index_of_p.nil?
      content
    else
      content[0...index_of_p+backslash_p.length]
  end
end
