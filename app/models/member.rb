class Member < ApplicationRecord

	validates_presence_of :name
	validates_presence_of :description 
	validates_presence_of :email
	has_attached_file :photo, styles:{medium: "400x400>"}
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/	

end
