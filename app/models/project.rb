class Project < ActiveRecord::Base
	validates :name, :description, :category, presence: true
	belongs_to :user
	has_many :projects, dependent: :destroy
end
