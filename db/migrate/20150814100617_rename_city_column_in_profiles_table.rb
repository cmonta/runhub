class RenameCityColumnInProfilesTable < ActiveRecord::Migration
  def change
  	rename_column :profiles, :city, :locality
  end
end
