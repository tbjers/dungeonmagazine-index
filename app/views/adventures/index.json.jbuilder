json.array!(@adventures) do |adventure|
  json.extract! adventure, :id, :title, :synopsis, :page, :authors, :min_level, :max_level, :keywords
  json.url issue_adventure_url(adventure.issue, adventure, format: :json)
end
