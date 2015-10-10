json.array!(@issues) do |issue|
  json.extract! issue, :id, :issue, :system, :published
  json.url issue_url(issue, format: :json)
end
