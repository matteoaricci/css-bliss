class CreateBandMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :band_members do |t|
      t.string :name
      t.integer :band_id
      t.string :img_link
      t.timestamps
    end
  end
end
