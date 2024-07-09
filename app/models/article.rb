class Article < ApplicationRecord
  scope :published, -> { where("published_at IS NOT NULL") }
  scope :recent, -> { where("published_at >= ?", 1.month.ago) }
  scope :by_author, ->(author_id) { where(author_id: author_id) }
  scope :published_last_year, -> { where("published_at >= ?", 1.year.ago) }
end
