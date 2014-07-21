module ApplicationHelper
	def full_title(page_title)
	    base_title = "URLShortener"
	    if page_title.empty?
	      base_title
	    else
	      "#{base_title} | #{page_title}"
	    end
	end

	def simple_header(header)
		header && !header.empty? ? header : "URLShortener"
	end

	def full_link(host,name)
		host = host.to_s
		host[0,host[host.index("//")+2..-1].index("/")+8] + name.to_s
	end
end
