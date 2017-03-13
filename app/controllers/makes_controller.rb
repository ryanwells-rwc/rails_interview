class MakesController < ApplicationController
	def index
		# @makes = Make.all
		@make = Make.find(65000016)
	end

	def show
		@make = Make.find(65000016)
	end

	def create
		render plain: params.inspect
	end
end
