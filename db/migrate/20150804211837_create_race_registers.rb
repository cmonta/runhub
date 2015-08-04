class CreateRaceRegisters < ActiveRecord::Migration
  def change
    rename_table :registrations, :raceregisters
  end
end
