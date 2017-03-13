class TrimsController < ApplicationController
	def show
		@trim = Trim.find(params[:id])
	end

	def compare
		render plain: build_trim_list(params).inspect
	end

	private
		def build_trim_list(my_param)
			my_param.select! { |k,v| k.include?("trim-id-") }
		end
end
