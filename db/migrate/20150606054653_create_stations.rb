class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.integer :minsFromHome

      t.timestamps null: false
    end
  end
end
