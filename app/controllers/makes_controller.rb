class MakesController < ApplicationController
	def index
		# @makes = Make.all
		@make = Make.find(65000016)
	end

	def show
		@make = Make.find(65000016)
	end

	def create
		build_trim_list(params)
		session[:compared_trims] = params
		# render plain: session[:compared_trims].inspect
		redirect_to :controller => "trims", :action => "compare"
		#redirect_to mycompare_path
	end

	private
		def build_trim_list(my_param)
			my_param.select! { |k,v| k.include?("trim-id-") }
		end
end
