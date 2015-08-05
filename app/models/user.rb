class User < ActiveRecord::Base
	validates :nickname, presence: true, uniqueness: true

	acts_as_followable
	acts_as_follower

	has_many :race_registers
	has_many :races, :through => :race_registers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
