class CreateStreets < ActiveRecord::Migration
  def change
    create_table :streets do |t|
      t.string :eng_name
      t.string :heb_name
      t.integer :min_range
      t.integer :max_range
      t.string :remote_id
      t.decimal :lat, :precision => 10, :scale => 6
      t.decimal :ltd, :precision => 10, :scale => 6
    end
  end
end
