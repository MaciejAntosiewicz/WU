class AddAttachmentPhotoToSketches < ActiveRecord::Migration
  def self.up
    change_table :sketches do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :sketches, :photo
  end
end
