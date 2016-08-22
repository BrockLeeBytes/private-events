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

	def show
		@event = Event.find(params[:id])
		@user = User.find(@event.creator_id)
		@attendees = @event.attendees.all
	end

	def index
		@upcoming = Event.upcoming
		@past = Event.past
	end

	private

		def event_params
			params.require(:event).permit(:name, :event_date, :description)
		end
end
