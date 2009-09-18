class Picture < ActiveRecord::Base
  has_attached_file :image, :styles => {:thmb => "300x200>", :medium => "600x400>"}
  
  validates_presence_of :title
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => 'image/jpeg'
end
