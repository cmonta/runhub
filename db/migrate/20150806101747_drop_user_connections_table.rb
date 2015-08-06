class DropUserConnectionsTable < ActiveRecord::Migration
  def change
  	drop_table :user_connections
  end
end
