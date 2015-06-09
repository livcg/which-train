class CreateTraintrips < ActiveRecord::Migration
  def change
    create_table :traintrips do |t|
      t.time :trainleavesat
      t.references :station, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
