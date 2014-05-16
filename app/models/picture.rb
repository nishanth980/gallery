class Picture < ActiveRecord::Base

  belongs_to :image


  has_attached_file :picture

 validates_attachment_content_type :picture, :content_type => %w(image/jpeg image/jpg)
end
