class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category
end
