class CreateTripOptions < ActiveRecord::Migration
  def change
    create_table :trip_options do |t|
      t.time :leaveHouseBy
      t.time :trainLeavesAt
      t.references :station, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
