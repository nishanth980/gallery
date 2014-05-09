class Book < ActiveRecord::Base
	belongs_to :author

  def to_param
    "#{title}".parameterize
  end

end
