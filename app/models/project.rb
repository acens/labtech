class Project < ApplicationRecord

	validates_presence_of :name
	validates_presence_of :description
	has_attached_file :ico, styles:{medium: "400x400>"}
	validates_attachment_content_type :ico, content_type: /\Aimage\/.*\z/

end
