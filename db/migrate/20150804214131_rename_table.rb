class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :raceregisters, :race_registers
  end
end
