class MakesController < ApplicationController
	def index
		@make = Make.find(65000016)
	end
end
