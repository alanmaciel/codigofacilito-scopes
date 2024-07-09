class User < ApplicationRecord
  scope :active, -> { where(active: true) }
  scope :by_role, ->(role) { where(role: role) }
  scope :recent_signups, -> { where("created_at >= ?", 7.days.ago) }
end
