class RenameTripOptionsMethods < ActiveRecord::Migration
  def change
    rename_column :trip_options, :leave_house_by, :leave_house_by
    rename_column :trip_options, :train_leaves_at, :train_leaves_at
  end
end
