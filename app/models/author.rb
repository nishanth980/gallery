class Author < ActiveRecord::Base


	has_many :books

    after_create :create_uniquename


    def create_uniquename
    self.update_attributes(
      :unique_name  => self.name
    )
    end

     def to_param
    "#{id} #{unique_name}".parameterize
  end


	
end
