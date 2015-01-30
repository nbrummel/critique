class Project < ActiveRecord::Base
  belongs_to :user

  validates(:name, presence: true, length: { maximum: 100, minimum: 5 })

  validates(:type, presence: true, length: { maximum: 25,  minimum: 3 })

  validates(:location,    length: { maximum: 50 },   allow_blank: true)

  validates(:description, length: { maximum: 2000 }, allow_blank: true)
end
