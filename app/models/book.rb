class Book < ActiveRecord::Base
	belongs_to :author

  def to_param
    "#{id} #{title}".parameterize
  end

end
