class Project < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true

  validates :type, presence: true

  validates :location, allow_blank: true

  validates :description, allow_blank: true
end
