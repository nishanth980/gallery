class Author < ActiveRecord::Base


	has_many :books

    after_create :create_uniquename


    def create_uniquename
    auth=Author.find(:all,:conditions => ['unique_name IN (?)', self.name] )
    if auth.count==1
    b=0
    b=b+1
    a=self.name
    a=a+"b"
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
