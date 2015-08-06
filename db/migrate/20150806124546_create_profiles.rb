class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.string :city
    	t.string :level
    	t.text :description
    	t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
