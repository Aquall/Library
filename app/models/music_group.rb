class MusicGroup < ApplicationRecord
  has_many :albums, as: :singable
end
