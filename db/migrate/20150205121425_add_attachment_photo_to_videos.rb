class AddAttachmentPhotoToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :videos, :photo
  end
end
