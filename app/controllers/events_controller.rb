class EventsController < ApplicationController

	def new
		@user = current_user
		@event = Event.new
	end
	
	def create
		@event = current_user.created_events.build(event_params)
		if @event.save
			redirect_to root_url
		else
			render 'new'
		end
	end

	private

		def event_params
			params.require(:event).permit(:event_date, :description)
		end
end
