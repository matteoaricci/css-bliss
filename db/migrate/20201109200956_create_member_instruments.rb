class CreateMemberInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :member_instruments do |t|
      t.integer :band_member_id
      t.integer :instrument_id
      t.timestamps
    end
  end
end
