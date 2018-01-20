class Idea < ApplicationRecord
	validates :description, :author, presence: true
	
	self.per_page = 10
end
