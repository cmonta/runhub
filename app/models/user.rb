class User < ActiveRecord::Base
	validates :nickname, presence: true, uniqueness: true

	acts_as_followable
	acts_as_follower

	has_many :race_registers
	has_many :races, :through => :race_registers

	# Added to filter the user list, avoiding current_user
	scope :all_except, ->(user) { where.not(id: user) }
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #config profile
  after_create :build_profile

  has_one :profile, dependent: :destroy

   def build_profile
    Profile.create(user: self) # Associations must be defined correctly for this syntax, avoids using ID's directly.
  end
end
