class Project < ApplicationRecord

	validates_presence_of :name
	validates_presence_of :description
	has_attached_file :ico, styles:{small: "200x200>"},
		:storage => :cloudinary, :path => 'projects/:id/:style/:filename',
		:cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),
		default_url: "/system/projects/missing/:style/missing.jpg"
	validates_attachment_content_type :ico, content_type: /\Aimage\/.*\z/

end
