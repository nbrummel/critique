class Project < ActiveRecord::Base
  belongs_to :user

  validates(:name, presence: true, length: { maximum: 100, minimum: 5 })

  #validates :type, presence: true

  #validates :location, allow_blank: true

  #validates :description, allow_blank: true
end
