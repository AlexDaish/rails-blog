module PostsHelper
	def pull(quote)
		if quote.present?
			"<blockqoute>#{quote}</blockqoute>".html_safe
			end
		end
	end