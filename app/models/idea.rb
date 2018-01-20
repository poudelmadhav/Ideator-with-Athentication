class Idea < ApplicationRecord
	validates :description, :author, :user_id, presence: true
	
	self.per_page = 10

	belongs_to :user
end
