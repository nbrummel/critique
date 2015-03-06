class Project < ActiveRecord::Base
	validates :name, :description, :type, presence: true
	belongs_to :user
	has_many :projects, dependent: :destroy
end
