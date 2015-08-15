class AddColumnLocalityToRace < ActiveRecord::Migration
  def change
    add_column :races, :locality, :string
  end
end
