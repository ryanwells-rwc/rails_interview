class Make < ActiveRecord::Base
	has_many :models
	accepts_nested_attributes_for :models
end
