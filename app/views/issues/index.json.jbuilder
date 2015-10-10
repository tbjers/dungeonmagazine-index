json.array!(@issues) do |issue|
  json.extract! issue, :id, :issue, :system
  json.url issue_url(issue, format: :json)
end
