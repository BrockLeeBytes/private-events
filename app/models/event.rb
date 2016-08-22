class Event < ApplicationRecord
	belongs_to :creator, :class_name => 'User'
	
	has_many :invites, :foreign_key => :attended_event_id
	has_many :attendees, :through => :invites

	def self.upcoming
		self.where("event_date >= ?", Date.current)
	end

	def self.past
		self.where("event_date < ?", Date.current)
	end

end
