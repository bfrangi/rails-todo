class Task < ApplicationRecord
  scope :completed, -> { where.not(completed: nil) }
  scope :not_completed, -> { where(completed: nil) }

  validates :content, presence: true
  belongs_to :user
end
