class RenameTrainTripsTrainLeavesAt < ActiveRecord::Migration
  def change
    rename_column :traintrips, :trainleavesat, :train_leaves_at
  end
end
