class Author < ActiveRecord::Base


  has_many :books

    after_create :strip_whitespace, :create_uniquename


    def create_uniquename
      bas=self.name
      val=bas.strip.gsub('','').split( /  */ ).join('.')
    auth=Author.find(:all,:conditions => ['name LIKE ?', val] )
    if auth.count > 1
    b = auth.count 
    a=self.name.strip.gsub('','').split( /  */ ).join('.') + "#{b}"

    self.update_attributes(
      :unique_name  => "#{a}"
    )
    else
    self.update_attributes(
      :unique_name  => self.name.strip.gsub('','').split( /  */ ).join('.')
    )
    end
    end

      def strip_whitespace
      self.update_attributes(
       :name  => self.name.strip.gsub('','').split( /  */ ).join('.')
       )
      end

     def to_param
    "#{id}-#{name}".parameterize
  end


  
end