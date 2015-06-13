class RenameStationmins_from_home < ActiveRecord::Migration
  def change
    rename_column :stations, :minsFromHome, :mins_from_home
  end
end
