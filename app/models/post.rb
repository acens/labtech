class Post < ApplicationRecord

  validates_presence_of :title
  validates_presence_of :description
  has_attached_file :photo, styles:{medium: "400x400>" , large: '800x800>'},
  :storage => :cloudinary, :path => 'posts/:id/:style/:filename',
  :cloudinary_credentials => Rails.root.join("config/cloudinary.yml"),
  default_url: "/system/posts/missing/:style/missing.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
