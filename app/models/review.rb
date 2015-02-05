class Review < ActiveRecord::Base

	# This is the Review model. 
	has_and_belongs_to :users, through: :projects
	has_one :projects

end
