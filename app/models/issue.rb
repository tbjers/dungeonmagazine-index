class Issue
  include Mongoid::Document
  include Mongoid::Timestamps

  field :issue, type: Integer
  field :system, type: String
  field :published, type: String

  validates :issue, presence: true
  validates :system, presence: true
  validates :published, presence: true

  embeds_many :adventures
  embeds_many :articles

  index({ issue: 1 })
  index({ system: 1 })

  index({ 'adventures.title': 1 })
  index({ 'adventures.page': 1 })
  index({ 'articles.title': 1 })
  index({ 'articles.page': 1 })

  index({
    'adventures.title': "text",
    'adventures.synopsis': "text",
    'adventures.authors': "text",
    'adventures.keywords': "text",
    'articles.title': "text",
    'articles.synopsis': "text",
    'articles.authors': "text",
    'articles.keywords': "text"
  }, { name: 'textsearch' })

  def self.search(query)
    where({ '$text' => { '$search' => query } })
  end
end
