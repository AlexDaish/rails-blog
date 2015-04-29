class Comment < ActiveRecord::Base
	belongs_to :post

	validates :body, presence: true
	validates :post, presence: true

	def commenter_name
		self.commenter.present? ? commenter : "anonymous"
	end
end
