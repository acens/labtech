class Post < ApplicationRecord

  validates_presence_of :title
  validates_presence_of :description
  has_attached_file :photo, styles:{medium: "400x400>"}
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
