class AddAttachmentPhotoToStylings < ActiveRecord::Migration
  def self.up
    change_table :stylings do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :stylings, :photo
  end
end
