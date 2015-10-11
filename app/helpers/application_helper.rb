module ApplicationHelper
  def render_keywords (keywords)
    keywords.map do |keyword|
      '<span class="label label-default">' + keyword + '</span>'
    end.compact.join("\n").html_safe
  end

  def render_authors (authors)
    authors.compact.join(', ')
  end
end
