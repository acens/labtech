class Member < ApplicationRecord

	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :email
	has_attached_file :photo, styles:{medium: "400x400#"},
		:storage => :cloudinary, :path => 'members/:id/:style/:filename',
		:cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),
   	default_url: "/system/members/missing/:style/missing.jpg"
	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
