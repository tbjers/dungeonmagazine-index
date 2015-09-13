json.array!(@issues) do |issue|
  json.extract! issue, :id, :issue, :published, :system, :adventures, :articles
  json.url issue_url(issue, format: :json)
end
