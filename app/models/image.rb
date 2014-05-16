class Image < ActiveRecord::Base

    has_many :pictures

   attr_accessible :title, :content, :pictures_attributes

    accepts_nested_attributes_for :pictures, :allow_destroy => true    

end
