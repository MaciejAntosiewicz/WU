class Video < ActiveRecord::Base
	has_attached_file :photo, styles: { medium: "800x450>", thumb: "800x450#" }, default_url:  "/system/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
	validates_attachment_presence :photo
end
