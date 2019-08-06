class Like < ApplicationRecord
	belongs_to :user
	belongs_to :gossipp, optional: true
	belongs_to :comment, optional: true
end
