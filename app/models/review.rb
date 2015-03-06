class Review < ActiveRecord::Base
	belongs_to :user, through: :projects
	belongs_to :project
end
