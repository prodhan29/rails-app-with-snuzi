class Semester < ApplicationRecord

  has_many :regdetails
  has_many :users, through: :regdetails
  has_many :courses, dependent: :destroy
  accepts_nested_attributes_for :courses, allow_destroy: true
end
