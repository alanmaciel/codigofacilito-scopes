class Post < ApplicationRecord
  scope :popular, -> { where("likes_count > ?", 100) }
end
