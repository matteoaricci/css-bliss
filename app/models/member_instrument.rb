class MemberInstrument < ApplicationRecord
    belongs_to :band_member
    belongs_to :instrument
end
