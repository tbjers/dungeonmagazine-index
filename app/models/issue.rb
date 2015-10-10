class Issue
  include Mongoid::Document
  include Mongoid::Timestamps
  field :issue, type: Integer
  field :system, type: String
  embeds_many :adventures
  embeds_many :articles
end
