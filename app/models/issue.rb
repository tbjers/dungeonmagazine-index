class Issue
  include Mongoid::Document

  field :issue, type: Integer
  field :published, type: Date
  field :system, type: String
  field :adventures, type: Array
end
