json.array!(@articles) do |article|
  json.extract! article, :id, :title, :synopsis, :page, :authors, :keywords
  json.url issue_article_url(article.issue, article, format: :json)
end
