class Project < ActiveRecord::Base
	validates :name, :description, :type, presence: true

end
