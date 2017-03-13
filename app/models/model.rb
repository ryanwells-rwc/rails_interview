class Model < ActiveRecord::Base
  belongs_to :make
	has_many :trims
	accepts_nested_attributes_for :trims
end
