class Invite < ApplicationRecord
  belongs_to :attendee, :class => 'User'
  belongs_to :attended_event, :class => 'Event'
end
