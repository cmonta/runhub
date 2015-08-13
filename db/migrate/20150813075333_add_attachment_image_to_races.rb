class AddAttachmentImageToRaces < ActiveRecord::Migration
  def self.up
    change_table :races do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :races, :image
  end
end
