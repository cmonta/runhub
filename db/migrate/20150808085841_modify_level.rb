class ModifyLevel < ActiveRecord::Migration
  def change
  	change_column_default :profiles, :level, "Beginner"
  end
end
