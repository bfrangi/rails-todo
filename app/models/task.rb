class Task < ApplicationRecord
  scope :completed, lambda {
    where('completed <= ?', Time.now)
  }
  scope :not_completed, lambda {
    where('completed IS NULL OR completed > ?', Time.now)
  }

  validates :content, presence: true
  belongs_to :user

  def completed?
    !completed.nil? && completed <= Time.now
  end
end
