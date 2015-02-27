class City < ActiveRecord::Base
	  validates :name, :short_name, presence: true
end
