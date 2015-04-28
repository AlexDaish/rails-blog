class Post < ActiveRecord::Base
	#validate our data
	#Don't let users submit blank data

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: {minimum: 50}
	validates :author, presence: true
end
