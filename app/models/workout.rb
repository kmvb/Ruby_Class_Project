class Workout < ActiveRecord::Base
	
	belongs_to :user
	has_many :tasks
	has_many :exercises, through: :tasks
	
	
end
