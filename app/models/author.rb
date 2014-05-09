class Author < ActiveRecord::Base


	has_many :books

    after_create :create_uniquename


    def create_uniquename
    auth=Author.find(:all,:conditions => ['name LIKE ?', self.name] )
    if auth.count > 1
    b = auth.count 
    a=self.name + "#{b}"

    self.update_attributes(
      :unique_name  => "#{a}"
    )
    else
    self.update_attributes(
      :unique_name  => self.name
    )
    end
    end

     def to_param
    "#{unique_name}".parameterize
  end


	
end
