class Profile < ActiveRecord::Base
	belongs_to :user

	# formatted as an array of options, option being an array of key, value
	LEVEL = ['Beginner', 'Intermediate', 'Pro']

	validates_inclusion_of :level, :in => LEVEL
end
