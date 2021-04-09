class UserSnack < ApplicationRecord
  belongs_to :user
  belongs_to :snack

  # review needs to be more than 10 characters
  validates :review, length: { minimum: 10 }

  # rating must be greater than 0 and less than 11
  validates :rating, numericality: { greater_than: 0, less_than_or_equal_to: 10 }

  # user can only review a snack once
  validates :user_id, uniqueness: { scope: :snack_id }
end
