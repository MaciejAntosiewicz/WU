class Sketche < ActiveRecord::Base
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "300x300#" }, default_url:  "/system/missing.png"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
	validates_attachment_presence :photo
end
