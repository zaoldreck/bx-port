class Portfolio < ApplicationRecord

  extend FriendlyId
  friendly_id :slug, use: [:slugged, :finders]

  has_many :transactions

end
