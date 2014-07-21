class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def snake_ur(url_alias)
		url_alias.strip!
		return url_alias if url_alias.empty?
		return 'lomai_dalwe' if url_alias.index(/urls|api|random/) && !url_alias.index(/.urls|.api|.random/) && !url_alias.index(/urls.|api.|random./)
		url_alias.to_s.gsub!(/\W/,'_')

		if url_alias.count("a-zA-Z0-9") > 0
		  url_alias = url_alias[0..url_alias.rindex(/[a-zA-Z0-9]/)]
		  url_alias = url_alias[url_alias.index(/[a-zA-Z0-9]/)..-1]
		else
			url_alias
		end
	end

end
