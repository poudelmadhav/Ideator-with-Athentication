class Idea < ApplicationRecord
	validates :description, :user_id, presence: true
	
	self.per_page = 10

	belongs_to :user

	delegate :name, to: :user, prefix: true 
end
