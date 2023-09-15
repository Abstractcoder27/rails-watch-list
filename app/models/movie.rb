class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: true
  validates :overview, presence: true

  has_many :bookmarks, dependent: :restrict_with_error
end
