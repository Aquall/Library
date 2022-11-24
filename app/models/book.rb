class Book < ApplicationRecord
  validates :name, presence: {message: 'must be abided!'}
  validates :year, numericality: {less_than_or_equal_to: DateTime.now.to_date.year}
  validates :name, uniqueness:{scope: :year, message: 'must be unique!'}
end
