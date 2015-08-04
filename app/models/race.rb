class Race < ActiveRecord::Base
	has_many :race_registers
	has_many :users, :through => :race_registers
end
