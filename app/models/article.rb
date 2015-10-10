class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :synopsis, type: String
  field :page, type: Integer
  field :authors, type: Array
  field :keywords, type: Array
  embedded_in :issue
end
