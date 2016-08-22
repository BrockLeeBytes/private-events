class InvitesController < ApplicationController

	def create
		@event = Event.find(params[:id])
		current_user.invites.create!(attended_event_id: @event.id)

		redirect_to @event
	end

	def destroy
		@event = Event.find(params[:id])
		current_user.invites.find_by(attended_event_id: @event.id).destroy

		redirect_to @event
	end
end
