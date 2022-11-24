class FilmsGenre < ApplicationRecord
  belongs_to :genre
  belongs_to :film
end
