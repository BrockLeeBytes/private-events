class EventsController < ApplicationController

	def new
		@user = current_user
		@event = Event.new
	end
	
	def create
	end
end
