class Gallery < ActiveRecord::Base
	
	has_many :pins, :dependent => :destroy


end
