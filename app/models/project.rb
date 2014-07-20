class Project < ActiveRecord::Base

	def self.accepting
		where('pledging_ends_on > ?', Time.now)
	end
end
