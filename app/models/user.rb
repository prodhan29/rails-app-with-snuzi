class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :regdetails
  has_many :semesters, through: :regdetails
  accepts_nested_attributes_for :semesters, allow_destroy: true
end
