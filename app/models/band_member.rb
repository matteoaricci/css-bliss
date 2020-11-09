class BandMember < ApplicationRecord
    belongs_to :band 
    has_many :member_instruments
    has_many :instruments, through: :member_instruments
end
