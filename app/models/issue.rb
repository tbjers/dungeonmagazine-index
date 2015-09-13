class Issue
  include Mongoid::Document
  include Mongoid::Timestamps

  field :issue, type: Integer
  field :published, type: Date
  field :system, type: String
  field :adventures, type: Array
  field :articles, type: Array
end
