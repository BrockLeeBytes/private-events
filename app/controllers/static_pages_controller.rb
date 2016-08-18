class StaticPagesController < ApplicationController

	def home
		if logged_in?
			@event = current_user.created_events
		end
	end
end
