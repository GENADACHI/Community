class Menber < ApplicationRecord
    has_many :likes, as: :likeable
end
