class TrimsController < ApplicationController
	def show
		@trim = Trim.find(params[:id])
	end

	def compare
		
	end
end
