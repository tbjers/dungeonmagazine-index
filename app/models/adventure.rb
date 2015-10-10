class Adventure
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :synopsis, type: String
  field :page, type: Integer
  field :authors, type: Array
  field :min_level, type: Integer
  field :max_level, type: Integer
  field :keywords, type: Array

  embedded_in :issue
end
