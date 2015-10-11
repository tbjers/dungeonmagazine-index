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

  validates :title, presence: true
  validates :synopsis, presence: true
  validates :page, presence: true
  validates :authors, presence: true
  validates :keywords, presence: true

  embedded_in :issue
end
