class TrimsController < ApplicationController
	def compare
		build_trim_list(params)
		@trim_list = Array.new
		params.each do |k,v|
			@trim_list << Trim.find(v)
		end
		@model_list = get_corresponding_models(@trim_list)
	end

	private
		def build_trim_list(my_param)
			my_param.select! { |k,v| k.include?("trim-id-") }
		end

		def get_corresponding_models(my_trims)
			my_models = Hash.new
			my_trims.each do |v|
				my_models[v.model_id] = Model.find(v.model_id)
			end
			return my_models
		end
end
