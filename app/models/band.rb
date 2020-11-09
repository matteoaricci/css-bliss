class Band < ApplicationRecord
    has_many :band_members
    has_many :albums
    has_many :songs, through: :albums
end
