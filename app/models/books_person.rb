class BooksPerson < ApplicationRecord
  belongs_to :people
  belongs_to :book
end
