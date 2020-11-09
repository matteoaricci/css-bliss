class Instrument < ApplicationRecord
    has_many :member_instruments
    has_many :band_members, through: :member_instruments
end
