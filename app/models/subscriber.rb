class Subscriber < ActiveRecord::Base


attr_accessible :role_id, :first_name, :last_name, :address, :email, :mobile_number, :password, :password_confirmation
#associations
	  belongs_to :user, :dependent => :destroy
  belongs_to :role
  



#callbacks
	  before_create :create_user

def create_user
   user = User.new(:email => self.email, :password => self.password, :password_confirmation => self.password_confirmation, :role_id => self.role_id)
   if user.save
     self.user = user
   else 
 	   return false
   end
  end



end
