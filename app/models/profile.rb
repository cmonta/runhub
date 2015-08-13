class Profile < ActiveRecord::Base
	belongs_to :user

	# formatted as an array of options, option being an array of key, value
	LEVEL = ['Beginner', 'Intermediate', 'Pro']

	validates_inclusion_of :level, in: LEVEL, on: :update

	# To add avatar to profiles
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
