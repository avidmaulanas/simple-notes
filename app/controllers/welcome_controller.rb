class WelcomeController < ApplicationController
	skip_before_action :authenticate_user!
	layout "landing_page"
	def index
	end
end