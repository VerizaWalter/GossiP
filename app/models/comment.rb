class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :gossipp
	has_many :likes
end
