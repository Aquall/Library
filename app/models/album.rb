class Album < ApplicationRecord
    belongs_to :singable, polymorphic: true
    has_many: songs
end
