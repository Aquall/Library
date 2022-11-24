class Person < ApplicationRecord
  has_many :albums, as: :singable
end
