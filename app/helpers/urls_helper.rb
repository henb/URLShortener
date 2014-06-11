module UrlsHelper
	def big_link(link)
		link.length < 100 ? link : nil
	end

end
