class Post < ActiveRecord::Base

	has_many :comments
	#validate our data
	#Don't let users submit blank data

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: {minimum: 50}
	validates :author, presence: true
	validates :published_at, presence: true, :if => :publication?


  paginates_per 3

  def self.from_param(param)
  	where(author: NameCase(param))
  end

  def published?
  	publication.present? and published_at.present?
  end
end
