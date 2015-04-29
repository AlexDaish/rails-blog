module PostsHelper
	def pull(quote)
		if quote.present?
			"<blockqoute>#{quote}</blockqoute>".html_safe
			end
	end

	def link_to_publication(post, opts = {})
		if opts [:seperator]
		"<span class=\"separator\">•</span>Published in #{link_to post.publication, post.url} on #{post.published_at}".html_safe
	else	
		"Published in #{link_to post.publication, post.url} on #{post.published_at}".html_safe
	end
end

end