class User < ApplicationRecord
	has_many :created_events, :foreign_key => 'creator_id', class_name: 'Event'
	
	has_many :invites, :foreign_key => :attendee_id
	has_many :attended_events, :through => :invites
	
	validates :name, uniqueness: true 

	def already_attending?(event)
		event.attendees.include?(self)
	end

	def upcoming_events
		self.attended_events.upcoming
	end

	def previous_events
		self.attended_events.past
	end

end
