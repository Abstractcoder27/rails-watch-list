class BookMark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  belongs_to :movie, :list, uniqueness: { scope: :list }
end
