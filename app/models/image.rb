class Image < ActiveRecord::Base

    has_many :pictures

   attr_accessible :title, :content, :pictures_attributes

    accepts_nested_attributes_for :pictures, :allow_destroy => true    

    before_save :assign_user_id


   def assign_user_id
   	self.user_id = current_user.id
   	return true
   end

end
