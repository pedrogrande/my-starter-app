class User < ActiveRecord::Base
	has_many :testimonials
	has_one :profile
	has_many :business_users
	has_many :businesses, through: :business_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
